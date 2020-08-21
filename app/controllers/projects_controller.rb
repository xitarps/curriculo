class ProjectsController < ApplicationController
  before_action :require_user, except: %i[index show]
  before_action :fetch_personal_info

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new()
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    return redirect_to @project if @project.save
    flash.now[:alert] = "Campo não pode ficar vazio"
    render :new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    return redirect_to projects_path if @project.update(project_params)
    flash.now[:alert] = "Campo não pode ficar vazio"
    render :new
  end

  def destroy
    @project = Project.find(params[:id])
    @project.delete
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :url,
                                    :image_url, :repo, :thumb_url)
  end

  def fetch_personal_info
    @personal_info = PersonalInfo.first
  end
end