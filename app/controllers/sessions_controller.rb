class SessionsController < ApplicationController
skip_before_action :verify_authenticity_token

before_filter :dont_relogin, only: :new

def new
	#login page
end

  def create
    auth = request.env['omniauth.auth']
    # Find an authentication or create an authentication
    # find_by provider e uid.
    already_exists = false
    @authentication = Authentication.find_with_omniauth(auth)
    if @authentication.nil?
      # puts "AUTHENTICATION NIL"
      # If no authentication was found, create a brand new one here
      @authentication = Authentication.create_with_omniauth(auth)
    else
      # puts "AUTHENTICATION ALREADY EXISTS"
      already_exists = true
    end
 
    if signed_in?
      # puts "SIGNED IN"
      if @authentication.user == current_user
        # puts "AUTHENTICATION USER == CURRENT USER"
        # User is signed in so they are trying to link an authentication with their
        # account. But we found the authentication and the user associated with it 
        # is the current user. So the authentication is already associated with 
        # this user. So let's display an error message.
        flash[:notive] = "You have already linked this account"

        # redirect_to root_path #alterei
        respond_to do |format|
          format.html { redirect_to root_path }
          format.json { render json: current_user }
        end
      else
      

        if !already_exists
          @authentication.user = current_user
     
          @authentication.save
          flash[:notive] = "Account successfully authenticated"
        else
          flash[:notive] = "Account already associated with another user"
        end
        respond_to do |format|
          format.html { redirect_to root_path } 

          format.json { render json: @authentication.user }
        end
      end
    else # no user is signed_in
      # puts "NO USER IS SIGNED IN"
      if @authentication.user.present?
        # puts "THE AUTHENTICATION WE FOUND HAD A USER ASSOCIATED WITH IT"
        # The authentication we found had a user associated with it so let's 
        # just log them in here
        sign_in(@authentication.user)
        # puts "ITS signed in?: #{signed_in?}"
        flash[:notive] = "Signed in!"
        # redirect_to root_path #alterei

        # response.headers['CONTENT_TYPE'] = 'application/json'
        
        respond_to do |format|
          # puts "FORMAT #{format.inspect}"
          format.js { render js: "<script> JSON.stringify(#{@authentication.user}) </script>" }
          format.html { redirect_to root_path }
          format.json { 
            user = @authentication.user
            token = user.generate_auth_token
            render :json => {
              :success => true, 
              :user=> user,
              :auth_token => token 
            }
          }#'{"user":"#{@authentication.user.name}"}' }#@authentication.user }
          # format.json { render json: @authentication.user }
        end
      else
         if @authentication.provider == 'identity'
          u = User.find(@authentication.uid)
    
        else
          u = User.create_with_omniauth(auth)
          u.confirmed_email = true
          u.save
         
        end
        u.authentications << @authentication
        sign_in(u)
       
        respond_to do |format|
          format.html { redirect_to root_path }
          format.json { render json: true }
        end
        # Se for outro provider que n identity tenho de gerar password e redirect
      end
    end
  end
  

  def destroy
    sign_out
    flash[:notive] = "Signed out!"
    respond_to do |format|
          format.html { redirect_to root_path }
          format.json { render json: true }
    end
  end
  
  def failure
    flash[:alert] = "Authentication failed, please try again."   
    # puts "IDENTITY LOGIN FAILURE"
    # redirect_to root_path
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: false }
    end
  end


  def dont_relogin
   redirect_to root_path unless !signed_in?
  end


end