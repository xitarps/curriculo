class AcademicsController < ApplicationController
  before_action :require_user, except: %i[index]
  before_action :fetch_personal_info

  def index
    @academics = Academic.all
    @languages = Language.all
  end

  def new
    @academic = Academic.new()
  end

  def create
    @academic = Academic.new(academic_params)
    return redirect_to academics_path if @academic.save
    flash.now[:alert] = "Campo não pode ficar vazio"
    render :new
  end

  def edit
    @academic = Academic.find(params[:id])
  end

  def update
    @academic = Academic.find(params[:id])
    return redirect_to academics_path if @academic.update(academic_params)
    flash.now[:alert] = "Campo não pode ficar vazio"
    render :new
  end

  def destroy
    @academic = Academic.find(params[:id])
    @academic.delete
    redirect_to academics_path
  end

  private

  def academic_params
    params.require(:academic).permit(:institution, :course, :start_date,
                                     :end_date, :done)
  end

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end
end