class CareerInfosController < ApplicationController
  before_action :set_career_info, only: [:show, :edit, :update, :destroy]

  # GET /career_infos
  # GET /career_infos.json
  def index
    @career_infos = CareerInfo.all
  end

  # GET /career_infos/1
  # GET /career_infos/1.json
  def show
  end

  # GET /career_infos/new
  def new
    @career_info = CareerInfo.new
  end

  # GET /career_infos/1/edit
  def edit
  end

  # POST /career_infos
  # POST /career_infos.json
  def create
    @career_info = CareerInfo.new(career_info_params)

    respond_to do |format|
      if @career_info.save
        format.html { redirect_to @career_info, notice: 'Career info was successfully created.' }
        format.json { render :show, status: :created, location: @career_info }
      else
        format.html { render :new }
        format.json { render json: @career_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /career_infos/1
  # PATCH/PUT /career_infos/1.json
  def update
    respond_to do |format|
      if @career_info.update(career_info_params)
        format.html { redirect_to @career_info, notice: 'Career info was successfully updated.' }
        format.json { render :show, status: :ok, location: @career_info }
      else
        format.html { render :edit }
        format.json { render json: @career_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_infos/1
  # DELETE /career_infos/1.json
  def destroy
    @career_info.destroy
    respond_to do |format|
      format.html { redirect_to career_infos_url, notice: 'Career info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career_info
      @career_info = CareerInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def career_info_params
      params.require(:career_info).permit(:company, :work_function, :start_date, :end_date, :description)
    end
end
