class ExpendTypesController < ApplicationController
  before_action :set_expend_type, only: [:show, :edit, :update, :destroy]

  # GET /expend_types
  # GET /expend_types.json
  def index
    @expend_types = ExpendType.all
  end

  # GET /expend_types/1
  # GET /expend_types/1.json
  def show
  end

  # GET /expend_types/new
  def new
    @expend_type = ExpendType.new
  end

  # GET /expend_types/1/edit
  def edit
  end

  # POST /expend_types
  # POST /expend_types.json
  def create
    @expend_type = ExpendType.new(expend_type_params)

    respond_to do |format|
      if @expend_type.save
        format.html { redirect_to @expend_type, notice: 'Expend type was successfully created.' }
        format.json { render :show, status: :created, location: @expend_type }
      else
        format.html { render :new }
        format.json { render json: @expend_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expend_types/1
  # PATCH/PUT /expend_types/1.json
  def update
    respond_to do |format|
      if @expend_type.update(expend_type_params)
        format.html { redirect_to @expend_type, notice: 'Expend type was successfully updated.' }
        format.json { render :show, status: :ok, location: @expend_type }
      else
        format.html { render :edit }
        format.json { render json: @expend_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expend_types/1
  # DELETE /expend_types/1.json
  def destroy
    @expend_type.destroy
    respond_to do |format|
      format.html { redirect_to expend_types_url, notice: 'Expend type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expend_type
      @expend_type = ExpendType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expend_type_params
      params.require(:expend_type).permit(:type)
    end
end
