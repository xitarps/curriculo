class UsersController < ApplicationController
  before_action :require_user, except: %i[index]
  before_action :fetch_personal_info

  def edit
    @user=User.first
  end

  def update
    @user=User.first
    if @user.update(user_params)
      flash[:notice] = "Credenciais ok"
      return redirect_to edit_user_path(@user) 
    end
    flash.now[:alert] = "Oops... Campo vazio"
    render :edit
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
  
  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end
end