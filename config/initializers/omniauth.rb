module OmniAuth
  module Strategies
   class Identity
   	 # Override registration link 
   	 def registration_form
   	 	redirect '/signup'
   	 end

     # def request_phase
     #   redirect '/login'
     # end
   end
 end
end

# http://www.rubydoc.info/github/intridea/omniauth-identity/frames
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :identity, fields: [:email, :name], 
  	model: User, 
  	on_failed_registration: lambda { |env| UsersController.action(:new).call(env) },
  	form: lambda { |env| SessionsController.action(:new).call(env) } 
  # provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
           # :scope => 'email,read_stream'

  # provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
 
  # provider :linkedin, 'c8343548-7625-460a-a1de-1ad88bd7a3ad', 'bd4aa7a8-5dc7-4247-b522-ec991a1f74f6'
  
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}