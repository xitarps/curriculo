class LanguagesController < ApplicationController
  before_action :require_user, except: %i[display]
  before_action :fetch_personal_info

  def index
    @languages = Language.all
  end

  def new
    @language = Language.new()
  end

  def create
    @language = Language.new(language_params)
    return redirect_to languages_path if @language.save
    flash.now[:alert] = "Campo não pode ficar vazio"
    render :new
  end

  def edit
    @language = Language.find(params[:id])
  end

  def update
    @language = Language.find(params[:id])
    return redirect_to languages_path if @language.update(language_params)
    flash.now[:alert] = "Campo não pode ficar vazio"
    render :new
  end

  def destroy
    @language = Language.find(params[:id])
    @language.delete
    redirect_to languages_path
  end

  private

  def language_params
    params.require(:language).permit(:institution, :language, :start_date,
                                     :end_date, :level)
  end

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end
end