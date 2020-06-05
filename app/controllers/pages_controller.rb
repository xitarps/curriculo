class PagesController < ApplicationController
  before_action :require_user, except: %i[index]
  before_action :fetch_personal_info
  def index
  end

  def dashboard
    @user = User.first
  end

  private

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end
end
