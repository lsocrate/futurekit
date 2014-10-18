class Authentication < ActiveRecord::Base
  attr_accessible :provider, :uid, :user_id, :email
  belongs_to :user
  
  
  def self.find_with_omniauth(auth)
    find_by_provider_and_uid(auth['provider'], auth['uid'])
  end
 
  def self.create_with_omniauth(auth)
  	case auth['provider']
    when 'facebook'
    	create(uid: auth['uid'], provider: auth['provider'], email: auth['info']['email'])
    when 'google_oauth2'
    	create(uid: auth['uid'], provider: auth['provider'], email: auth['info']['email'])
    else
    	create(uid: auth['uid'], provider: auth['provider'])
    end
     # and other data you might want from the auth hash
  end
end
