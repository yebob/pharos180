class ProficiencyLevelsController < ApplicationController
  before_action :set_proficiency_level, only: [:show, :edit, :update, :destroy]

  # GET /proficiency_levels
  # GET /proficiency_levels.json
  def index
    @proficiency_levels = ProficiencyLevel.all
  end

  # GET /proficiency_levels/1
  # GET /proficiency_levels/1.json
  def show
  end

  # GET /proficiency_levels/new
  def new
    @proficiency_level = ProficiencyLevel.new
  end

  # GET /proficiency_levels/1/edit
  def edit
  end

  # POST /proficiency_levels
  # POST /proficiency_levels.json
  def create
    @proficiency_level = ProficiencyLevel.new(proficiency_level_params)

    respond_to do |format|
      if @proficiency_level.save
        format.html { redirect_to @proficiency_level, notice: 'Proficiency level was successfully created.' }
        format.json { render :show, status: :created, location: @proficiency_level }
      else
        format.html { render :new }
        format.json { render json: @proficiency_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proficiency_levels/1
  # PATCH/PUT /proficiency_levels/1.json
  def update
    respond_to do |format|
      if @proficiency_level.update(proficiency_level_params)
        format.html { redirect_to @proficiency_level, notice: 'Proficiency level was successfully updated.' }
        format.json { render :show, status: :ok, location: @proficiency_level }
      else
        format.html { render :edit }
        format.json { render json: @proficiency_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proficiency_levels/1
  # DELETE /proficiency_levels/1.json
  def destroy
    @proficiency_level.destroy
    respond_to do |format|
      format.html { redirect_to proficiency_levels_url, notice: 'Proficiency level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proficiency_level
      @proficiency_level = ProficiencyLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proficiency_level_params
      params.require(:proficiency_level).permit(:level_id, :skill_id, :position_id)
    end
end
