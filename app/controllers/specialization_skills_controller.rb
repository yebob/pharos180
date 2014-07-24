class SpecializationSkillsController < ApplicationController
  before_action :set_specialization_skill, only: [:show, :edit, :update, :destroy]

  # GET /specialization_skills
  # GET /specialization_skills.json
  def index
    @specialization_skills = SpecializationSkill.all
  end

  # GET /specialization_skills/1
  # GET /specialization_skills/1.json
  def show
  end

  # GET /specialization_skills/new
  def new
    @specialization_skill = SpecializationSkill.new
  end

  # GET /specialization_skills/1/edit
  def edit
  end

  # POST /specialization_skills
  # POST /specialization_skills.json
  def create
    @specialization_skill = SpecializationSkill.new(specialization_skill_params)

    respond_to do |format|
      if @specialization_skill.save
        format.html { redirect_to @specialization_skill, notice: 'Specialization skill was successfully created.' }
        format.json { render :show, status: :created, location: @specialization_skill }
      else
        format.html { render :new }
        format.json { render json: @specialization_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialization_skills/1
  # PATCH/PUT /specialization_skills/1.json
  def update
    respond_to do |format|
      if @specialization_skill.update(specialization_skill_params)
        format.html { redirect_to @specialization_skill, notice: 'Specialization skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @specialization_skill }
      else
        format.html { render :edit }
        format.json { render json: @specialization_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialization_skills/1
  # DELETE /specialization_skills/1.json
  def destroy
    @specialization_skill.destroy
    respond_to do |format|
      format.html { redirect_to specialization_skills_url, notice: 'Specialization skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialization_skill
      @specialization_skill = SpecializationSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialization_skill_params
      params.require(:specialization_skill).permit(:specialization_id, :skill_id)
    end
end
