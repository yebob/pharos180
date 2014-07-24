class SpecializationCategoriesController < ApplicationController
  before_action :set_specialization_category, only: [:show, :edit, :update, :destroy]

  # GET /specialization_categories
  # GET /specialization_categories.json
  def index
    @specialization_categories = SpecializationCategory.all
  end

  # GET /specialization_categories/1
  # GET /specialization_categories/1.json
  def show
  end

  # GET /specialization_categories/new
  def new
    @specialization_category = SpecializationCategory.new
  end

  # GET /specialization_categories/1/edit
  def edit
  end

  # POST /specialization_categories
  # POST /specialization_categories.json
  def create
    @specialization_category = SpecializationCategory.new(specialization_category_params)

    respond_to do |format|
      if @specialization_category.save
        format.html { redirect_to @specialization_category, notice: 'Specialization category was successfully created.' }
        format.json { render :show, status: :created, location: @specialization_category }
      else
        format.html { render :new }
        format.json { render json: @specialization_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialization_categories/1
  # PATCH/PUT /specialization_categories/1.json
  def update
    respond_to do |format|
      if @specialization_category.update(specialization_category_params)
        format.html { redirect_to @specialization_category, notice: 'Specialization category was successfully updated.' }
        format.json { render :show, status: :ok, location: @specialization_category }
      else
        format.html { render :edit }
        format.json { render json: @specialization_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialization_categories/1
  # DELETE /specialization_categories/1.json
  def destroy
    @specialization_category.destroy
    respond_to do |format|
      format.html { redirect_to specialization_categories_url, notice: 'Specialization category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialization_category
      @specialization_category = SpecializationCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialization_category_params
      params.require(:specialization_category).permit(:name)
    end
end
