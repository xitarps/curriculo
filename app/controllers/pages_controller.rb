class PagesController < ApplicationController
  before_action :require_user, except: %i[index plaincv]
  before_action :fetch_personal_info
  before_action :fetch_all_info, only: %i[plaincv]
  
  def index
  end

  def plaincv
  end

  def dashboard
    @user = User.first
  end

  private

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end

  def fetch_all_info
    @personal_info = PersonalInfo.first
    @academics = Academic.all
    @languages = Language.all
    @career_infos = CareerInfo.all
    @courses = Course.all.order(done_when: :desc)
    @courses_grouped=@courses.group_by {|item| item.school}
    @tools = Tool.all
  end
end
