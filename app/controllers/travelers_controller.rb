class TravelersController < ApplicationController
  before_action :set_traveler, only: [:show, :edit, :update, :destroy]

  # GET /travelers
  # GET /travelers.json
  def index
    @travelers = Traveler.all
  end

  # GET /travelers/1
  # GET /travelers/1.json
  def show
  end

  # GET /travelers/new
  def new
    @traveler = Traveler.new
  end

  # GET /travelers/1/edit
  def edit
  end

  # POST /travelers
  # POST /travelers.json
  def create
    @traveler = Traveler.new(traveler_params)

    respond_to do |format|
      if @traveler.save
        format.html { redirect_to @traveler, notice: 'Traveler was successfully created.' }
        format.json { render :show, status: :created, location: @traveler }
      else
        format.html { render :new }
        format.json { render json: @traveler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travelers/1
  # PATCH/PUT /travelers/1.json
  def update
    respond_to do |format|
      if @traveler.update(traveler_params)
        format.html { redirect_to @traveler, notice: 'Traveler was successfully updated.' }
        format.json { render :show, status: :ok, location: @traveler }
      else
        format.html { render :edit }
        format.json { render json: @traveler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travelers/1
  # DELETE /travelers/1.json
  def destroy
    @traveler.destroy
    respond_to do |format|
      format.html { redirect_to travelers_url, notice: 'Traveler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traveler
      @traveler = Traveler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traveler_params
      params.require(:traveler).permit(:trvael_id, :firstname, :lastname)
    end
end
