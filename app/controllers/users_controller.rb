class UsersController < ApplicationController
skip_before_action :verify_authenticity_token

	before_filter :cant_identify, only: :new
	before_filter :signed_in_user, except: [:new]
	before_filter :correct_user,   only: [:edit, :update]
	before_filter :admin_user,     only: [:destroy, :index]


  def new
    @user = env['omniauth.identity'] ||= User.new
  end

  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
    @desired_inventions = @user.desired_inventions#.select("DISTINCT ON (invention_id) *")
    if current_user?(@user) || isAdmin?
      @inventions = @user.inventions
    else
      @inventions = @user.inventions.where('status != ?', 'Waiting')
    end
    
  end

  def edit
    @helper_text = Page.find_by_permalink('helper_text_edit_users')
    @user = User.find(params[:id])
  end

  def update
    puts "PARAMS #{params[:user]}"
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      sign_in(@user)
      flash[:notice] = 'User was successfully updated.'
      redirect_to @user
    else
      render action: "edit"
    end
  end

  def cant_identify
    if signed_in?
      puts "CANT IDENTIFY"
      redirect_to root_url
    end
  end

  private
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user) 
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

end
