class SpecializationsController < ApplicationController
  before_action :set_specialization, only: [:show, :edit, :update, :destroy]

  # GET /specializations
  # GET /specializations.json
  def index
    @specializations = Specialization.all
  end

  # GET /specializations/1
  # GET /specializations/1.json
  def show
  end

  # GET /specializations/new
  def new
    @skill_categories = SkillCategory.all
    @specialization_categories = SpecializationCategory.all
    @skills = Skill.includes(:skill_category).all
    @specialization = Specialization.new
  end

  # GET /specializations/1/edit
  def edit
  end

  # POST /specializations
  # POST /specializations.json
  def create
    @specialization = Specialization.new(specialization_params)

    respond_to do |format|
      if @specialization.save
        format.html { redirect_to @specialization, notice: 'Specialization was successfully created.' }
        format.json { render :show, status: :created, location: @specialization }
      else
        format.html { render :new }
        format.json { render json: @specialization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specializations/1
  # PATCH/PUT /specializations/1.json
  def update
    respond_to do |format|
      if @specialization.update(specialization_params)
        format.html { redirect_to @specialization, notice: 'Specialization was successfully updated.' }
        format.json { render :show, status: :ok, location: @specialization }
      else
        format.html { render :edit }
        format.json { render json: @specialization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specializations/1
  # DELETE /specializations/1.json
  def destroy
    @specialization.destroy
    respond_to do |format|
      format.html { redirect_to specializations_url, notice: 'Specialization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialization
      @specialization = Specialization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialization_params
      params.require(:specialization).permit(:name, :specialization_id)
    end
end
