class SkillRelevancesController < ApplicationController
  before_action :set_skill_relevance, only: [:show, :edit, :update, :destroy]

  # GET /skill_relevances
  # GET /skill_relevances.json
  def index
    @skill_relevances = SkillRelevance.all
  end

  # GET /skill_relevances/1
  # GET /skill_relevances/1.json
  def show
  end

  # GET /skill_relevances/new
  def new
    @skill_relevance = SkillRelevance.new
  end

  # GET /skill_relevances/1/edit
  def edit
  end

  # POST /skill_relevances
  # POST /skill_relevances.json
  def create
    @skill_relevance = SkillRelevance.new(skill_relevance_params)

    respond_to do |format|
      if @skill_relevance.save
        format.html { redirect_to @skill_relevance, notice: 'Skill relevance was successfully created.' }
        format.json { render :show, status: :created, location: @skill_relevance }
      else
        format.html { render :new }
        format.json { render json: @skill_relevance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_relevances/1
  # PATCH/PUT /skill_relevances/1.json
  def update
    respond_to do |format|
      if @skill_relevance.update(skill_relevance_params)
        format.html { redirect_to @skill_relevance, notice: 'Skill relevance was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_relevance }
      else
        format.html { render :edit }
        format.json { render json: @skill_relevance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_relevances/1
  # DELETE /skill_relevances/1.json
  def destroy
    @skill_relevance.destroy
    respond_to do |format|
      format.html { redirect_to skill_relevances_url, notice: 'Skill relevance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_relevance
      @skill_relevance = SkillRelevance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_relevance_params
      params[:skill_relevance]
    end
end
