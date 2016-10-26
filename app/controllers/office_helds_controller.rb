class OfficeHeldsController < ApplicationController
  before_action :set_office_held, only: [:show, :edit, :update, :destroy]

  # GET /office_helds
  # GET /office_helds.json
  def index
    @office_helds = OfficeHeld.all
  end

  # GET /office_helds/1
  # GET /office_helds/1.json
  def show
  end

  # GET /office_helds/new
  def new
    @office_held = OfficeHeld.new
  end

  # GET /office_helds/1/edit
  def edit
  end

  # POST /office_helds
  # POST /office_helds.json
  def create
    @office_held = OfficeHeld.new(office_held_params)

    respond_to do |format|
      if @office_held.save
        format.html { redirect_to @office_held, notice: 'Office held was successfully created.' }
        format.json { render :show, status: :created, location: @office_held }
      else
        format.html { render :new }
        format.json { render json: @office_held.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_helds/1
  # PATCH/PUT /office_helds/1.json
  def update
    respond_to do |format|
      if @office_held.update(office_held_params)
        format.html { redirect_to @office_held, notice: 'Office held was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_held }
      else
        format.html { render :edit }
        format.json { render json: @office_held.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_helds/1
  # DELETE /office_helds/1.json
  def destroy
    @office_held.destroy
    respond_to do |format|
      format.html { redirect_to office_helds_url, notice: 'Office held was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_held
      @office_held = OfficeHeld.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_held_params
      params.require(:office_held).permit(:category)
    end
end
