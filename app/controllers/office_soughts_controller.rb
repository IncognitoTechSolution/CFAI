class OfficeSoughtsController < ApplicationController
  before_action :set_office_sought, only: [:show, :edit, :update, :destroy]

  # GET /office_soughts
  # GET /office_soughts.json
  def index
    @office_soughts = OfficeSought.all
  end

  # GET /office_soughts/1
  # GET /office_soughts/1.json
  def show
  end

  # GET /office_soughts/new
  def new
    @office_sought = OfficeSought.new
  end

  # GET /office_soughts/1/edit
  def edit
  end

  # POST /office_soughts
  # POST /office_soughts.json
  def create
    @office_sought = OfficeSought.new(office_sought_params)

    respond_to do |format|
      if @office_sought.save
        format.html { redirect_to @office_sought, notice: 'Office sought was successfully created.' }
        format.json { render :show, status: :created, location: @office_sought }
      else
        format.html { render :new }
        format.json { render json: @office_sought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_soughts/1
  # PATCH/PUT /office_soughts/1.json
  def update
    respond_to do |format|
      if @office_sought.update(office_sought_params)
        format.html { redirect_to @office_sought, notice: 'Office sought was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_sought }
      else
        format.html { render :edit }
        format.json { render json: @office_sought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_soughts/1
  # DELETE /office_soughts/1.json
  def destroy
    @office_sought.destroy
    respond_to do |format|
      format.html { redirect_to office_soughts_url, notice: 'Office sought was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_sought
      @office_sought = OfficeSought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_sought_params
      params.require(:office_sought).permit(:category)
    end
end
