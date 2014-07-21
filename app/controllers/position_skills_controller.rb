class PositionSkillsController < ApplicationController
  before_action :set_position_skill, only: [:show, :edit, :update, :destroy]

  # GET /position_skills
  # GET /position_skills.json
  def index
    @position_skills = PositionSkill.all
  end

  # GET /position_skills/1
  # GET /position_skills/1.json
  def show
  end

  # GET /position_skills/new
  def new
    @position_skill = PositionSkill.new
  end

  # GET /position_skills/1/edit
  def edit
  end

  # POST /position_skills
  # POST /position_skills.json
  def create
    @position_skill = PositionSkill.new(position_skill_params)

    respond_to do |format|
      if @position_skill.save
        format.html { redirect_to @position_skill, notice: 'Position skill was successfully created.' }
        format.json { render :show, status: :created, location: @position_skill }
      else
        format.html { render :new }
        format.json { render json: @position_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_skills/1
  # PATCH/PUT /position_skills/1.json
  def update
    respond_to do |format|
      if @position_skill.update(position_skill_params)
        format.html { redirect_to @position_skill, notice: 'Position skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_skill }
      else
        format.html { render :edit }
        format.json { render json: @position_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_skills/1
  # DELETE /position_skills/1.json
  def destroy
    @position_skill.destroy
    respond_to do |format|
      format.html { redirect_to position_skills_url, notice: 'Position skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_skill
      @position_skill = PositionSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_skill_params
      params.require(:position_skill).permit(:position_id, :level_id, :skill_id)
    end
end
