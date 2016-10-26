class TreasurersController < ApplicationController
  before_action :set_treasurer, only: [:show, :edit, :update, :destroy]

  # GET /treasurers
  # GET /treasurers.json
  def index
    @treasurers = Treasurer.all
  end

  # GET /treasurers/1
  # GET /treasurers/1.json
  def show
  end

  # GET /treasurers/new
  def new
    @treasurer = Treasurer.new
  end

  # GET /treasurers/1/edit
  def edit
  end

  # POST /treasurers
  # POST /treasurers.json
  def create
    @treasurer = Treasurer.new(treasurer_params)

    respond_to do |format|
      if @treasurer.save
        format.html { redirect_to @treasurer, notice: 'Treasurer was successfully created.' }
        format.json { render :show, status: :created, location: @treasurer }
      else
        format.html { render :new }
        format.json { render json: @treasurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treasurers/1
  # PATCH/PUT /treasurers/1.json
  def update
    respond_to do |format|
      if @treasurer.update(treasurer_params)
        format.html { redirect_to @treasurer, notice: 'Treasurer was successfully updated.' }
        format.json { render :show, status: :ok, location: @treasurer }
      else
        format.html { render :edit }
        format.json { render json: @treasurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treasurers/1
  # DELETE /treasurers/1.json
  def destroy
    @treasurer.destroy
    respond_to do |format|
      format.html { redirect_to treasurers_url, notice: 'Treasurer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treasurer
      @treasurer = Treasurer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treasurer_params
      params.require(:treasurer).permit(:address_type_id, :prefix_id, :firstname, :mi, :lastname, :alias, :suffix, :addresschange, :address, :suite, :city, :state_id, :zipcode, :phone, :ext)
    end
end
