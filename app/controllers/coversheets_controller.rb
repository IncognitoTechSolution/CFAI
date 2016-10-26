class CoversheetsController < ApplicationController
  before_action :set_coversheet, only: [:show, :edit, :update, :destroy]

  # GET /coversheets
  # GET /coversheets.json
  def index
    @coversheets = Coversheet.all
  end

  # GET /coversheets/1
  # GET /coversheets/1.json
  def show
  end

  # GET /coversheets/new
  def new
    @coversheet = Coversheet.new
  end

  # GET /coversheets/1/edit
  def edit
  end

  # POST /coversheets
  # POST /coversheets.json
  def create
    @coversheet = Coversheet.new(coversheet_params)

    respond_to do |format|
      if @coversheet.save
        format.html { redirect_to @coversheet, notice: 'Coversheet was successfully created.' }
        format.json { render :show, status: :created, location: @coversheet }
      else
        format.html { render :new }
        format.json { render json: @coversheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coversheets/1
  # PATCH/PUT /coversheets/1.json
  def update
    respond_to do |format|
      if @coversheet.update(coversheet_params)
        format.html { redirect_to @coversheet, notice: 'Coversheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @coversheet }
      else
        format.html { render :edit }
        format.json { render json: @coversheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coversheets/1
  # DELETE /coversheets/1.json
  def destroy
    @coversheet.destroy
    respond_to do |format|
      format.html { redirect_to coversheets_url, notice: 'Coversheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coversheet
      @coversheet = Coversheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coversheet_params
      params.require(:coversheet).permit(:report_id, :treasurer_id, :periodbegin, :periodend, :electiondate, :election_type_id, :office_held_id, :office_sought_id)
    end
end
