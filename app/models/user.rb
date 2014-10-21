class User < OmniAuth::Identity::Models::ActiveRecord
	

  validates :email, presence: true,
            length: { maximum: 75 },
            :uniqueness => { :case_sensitive => false },
            format: { :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i,
                      :message => 'This email address it not valid.'}
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
  validates :location, length: { maximum: 30 }
  
  has_many :authentications

  has_secure_password
  validates :password, presence: true
  validates :password_confirmation, presence: true

  before_save { email.downcase! }
  before_create :create_remember_token

  acts_as_follower

  def self.create_with_omniauth(auth)
    # you should handle here different providers data
    # eg. case auth['provider'] ..
    case auth['provider']
    when 'facebook'
      puts "ESTA AQUI O QUE DEVOLVE #{auth['info']['name']}"
      pass = rand(36**10).to_s(36)
      create(name: auth['info']['name'], email: auth['info']['email'], password: pass, password_confirmation: pass)
    when 'google_oauth2'
      puts "ESTA AQUI O QUE DEVOLVE #{auth['info']}"
      pass = rand(36**10).to_s(36)
      create(name: auth['info']['name'], email: auth['info']['email'], password: pass, password_confirmation: pass)  
    when 'linkedin'
      puts "ESTA AQUI O QUE DEVOLVE #{auth['info']}"
      pass = rand(36**10).to_s(36)
      create(name: auth['info']['name'], email: auth['info']['email'], password: pass, password_confirmation: pass)  
    when 'identity'
      puts "CHEGOU AO IDENTITY"
      #N é por aqui que ele cria quando é identity, n chega aqui nunca.
    else
      'default'
    end
    # IMPORTANT: when you're creating a user from a strategy that
    # is not identity, you need to set a password, otherwise it will fail
    # I use: user.password = rand(36**10).to_s(36)
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    PasswordResetWorker.perform_async(self.id)
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  
  def generate_auth_token
    begin
      self.auth_token = SecureRandom.urlsafe_base64
      # self.password_reset_sent_at = Time.zone.now #to be added
      save!
      return self.auth_token
    end
  end

  def generate_token_inner(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
      self.password_reset_sent_at = Time.zone.now
      save!
      return self[column]
    end while User.exists?(column => self[column])
  end

  def send_confirmation_email
    self.email_confirm_token = SecureRandom.urlsafe_base64
    save!
    UserMailer.confirm_email(self).deliver
  end

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

    def create_user_profile
      create_profile!   
    end

    def send_welcome_email
      WelcomeWorker.perform_async(self.id)
    end

  
  
end
