class PagesController < ApplicationController
  before_action :require_user, excpet: [:index ]
  def index
  end

  def dashboard
  end
end
