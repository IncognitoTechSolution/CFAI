class FilerTypesController < ApplicationController
  before_action :set_filer_type, only: [:show, :edit, :update, :destroy]

  # GET /filer_types
  # GET /filer_types.json
  def index
    @filer_types = FilerType.all
  end

  # GET /filer_types/1
  # GET /filer_types/1.json
  def show
  end

  # GET /filer_types/new
  def new
    @filer_type = FilerType.new
  end

  # GET /filer_types/1/edit
  def edit
  end

  # POST /filer_types
  # POST /filer_types.json
  def create
    @filer_type = FilerType.new(filer_type_params)

    respond_to do |format|
      if @filer_type.save
        format.html { redirect_to @filer_type, notice: 'Filer type was successfully created.' }
        format.json { render :show, status: :created, location: @filer_type }
      else
        format.html { render :new }
        format.json { render json: @filer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filer_types/1
  # PATCH/PUT /filer_types/1.json
  def update
    respond_to do |format|
      if @filer_type.update(filer_type_params)
        format.html { redirect_to @filer_type, notice: 'Filer type was successfully updated.' }
        format.json { render :show, status: :ok, location: @filer_type }
      else
        format.html { render :edit }
        format.json { render json: @filer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filer_types/1
  # DELETE /filer_types/1.json
  def destroy
    @filer_type.destroy
    respond_to do |format|
      format.html { redirect_to filer_types_url, notice: 'Filer type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filer_type
      @filer_type = FilerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filer_type_params
      params.require(:filer_type).permit(:type)
    end
end
