class SkillCategoriesController < ApplicationController
  before_action :set_skill_cat, only: [:show, :edit, :update, :destroy]

  # GET /skill_cats
  # GET /skill_cats.json
  def index
    @skill_cats = SkillCategory.all
  end

  # GET /skill_cats/1
  # GET /skill_cats/1.json
  def show
  end

  # GET /skill_cats/new
  def new
    @skill_cat = SkillCategory.new
  end

  # GET /skill_cats/1/edit
  def edit
  end

  # POST /skill_cats
  # POST /skill_cats.json
  def create
    @skill_cat = SkillCategory.new(skill_cat_params)

    respond_to do |format|
      if @skill_cat.save
        format.html { redirect_to @skill_cat, notice: 'Skill cat was successfully created.' }
        format.json { render :show, status: :created, location: @skill_cat }
      else
        format.html { render :new }
        format.json { render json: @skill_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_cats/1
  # PATCH/PUT /skill_cats/1.json
  def update
    respond_to do |format|
      if @skill_cat.update(skill_cat_params)
        format.html { redirect_to @skill_cat, notice: 'Skill cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_cat }
      else
        format.html { render :edit }
        format.json { render json: @skill_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_cats/1
  # DELETE /skill_cats/1.json
  def destroy
    @skill_cat.destroy
    respond_to do |format|
      format.html { redirect_to skill_categories_url, notice: 'Skill cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_cat
      @skill_cat = SkillCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_cat_params
      params.require(:skill_category).permit(:name)
    end
end
