class PagesController < ApplicationController
  before_action :require_user, except: %i[index plaincv]
  before_action :fetch_personal_info
  before_action :fetch_all_info, only: %i[plaincv]
  
  def index
    record_visitor
  end

  def plaincv
  end

  def dashboard
    @user = User.first
    @week_visits = Visitor.all.where(created_at: 7.days.ago.beginning_of_day..Time.zone.now.end_of_day).count
    @today_visits = Visitor.all.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).count
    @yesterday_visits = Visitor.all.where(created_at: Time.zone.yesterday.beginning_of_day..Time.zone.yesterday.end_of_day).count
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

private

def record_visitor
  Visitor.create(ip: request.remote_ip) unless logged_in?
end
