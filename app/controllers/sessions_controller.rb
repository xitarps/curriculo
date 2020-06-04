class SessionsController < ApplicationController
  before_action :fetch_personal_info
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: session_params[:email])

    if !@user.nil? && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      return redirect_to root_path
    else
      @user = User.new(session_params)
      flash.now[:alert] = '&nbsp; Oops... email ou senha inválida'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end
  
end