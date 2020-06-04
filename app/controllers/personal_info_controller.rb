class PersonalInfoController < ApplicationController
  before_action :require_user, except: %i[display]
  before_action :fetch_personal_info
  def display
    @personal_info = PersonalInfo.first
  end

  def edit
    @personal_info = PersonalInfo.first
  end

  def update
    @personal_info = PersonalInfo.first
    return redirect_to personal_info_path if @personal_info.update(personal_info_params)
    flash.now[:alert] = 'Campo não pode ficar vazio'
    render :edit
  end

  private 
  
  def personal_info_params
    params.require(:personal_info).permit(:name, :nickname, :birthday, :gender,
                                          :country, :state, :city,
                                          :neighborhood, :street, :number,
                                          :zipcode, :phone_a, :phone_b, :email,
                                          :relationship, :focus, :greeting,
                                          :text_hook, :github, :gitlab,
                                          :linkedin, :footer_text)
  end

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end

  
end