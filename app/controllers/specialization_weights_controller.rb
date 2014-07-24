class SpecializationWeightsController < ApplicationController
  before_action :set_specialization_weight, only: [:show, :edit, :update, :destroy]

  # GET /specialization_weights
  # GET /specialization_weights.json
  def index
    @specialization_weights = SpecializationWeight.all
  end

  # GET /specialization_weights/1
  # GET /specialization_weights/1.json
  def show
  end

  # GET /specialization_weights/new
  def new
    @specialization_weight = SpecializationWeight.new
  end

  # GET /specialization_weights/1/edit
  def edit
  end

  # POST /specialization_weights
  # POST /specialization_weights.json
  def create
    @specialization_weight = SpecializationWeight.new(specialization_weight_params)

    respond_to do |format|
      if @specialization_weight.save
        format.html { redirect_to @specialization_weight, notice: 'Specialization weight was successfully created.' }
        format.json { render :show, status: :created, location: @specialization_weight }
      else
        format.html { render :new }
        format.json { render json: @specialization_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialization_weights/1
  # PATCH/PUT /specialization_weights/1.json
  def update
    respond_to do |format|
      if @specialization_weight.update(specialization_weight_params)
        format.html { redirect_to @specialization_weight, notice: 'Specialization weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @specialization_weight }
      else
        format.html { render :edit }
        format.json { render json: @specialization_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialization_weights/1
  # DELETE /specialization_weights/1.json
  def destroy
    @specialization_weight.destroy
    respond_to do |format|
      format.html { redirect_to specialization_weights_url, notice: 'Specialization weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialization_weight
      @specialization_weight = SpecializationWeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialization_weight_params
      params.require(:specialization_weight).permit(:weight, :skill_category_id, :specialization_id)
    end
end
