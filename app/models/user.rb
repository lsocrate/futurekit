# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  age             :integer
#  location        :string(255)
#  description     :text
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
	
  validates :email, presence: true,
            length: { maximum: 75 },
            :uniqueness => { :case_sensitive => false },
            format: { :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i,
                      :message => 'This email address it not valid.'}
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
  validates :location, length: { maximum: 30 }
  
  has_secure_password
  validates :password, presence: true
  validates :password_confirmation, presence: true

  before_save { email.downcase! }

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
