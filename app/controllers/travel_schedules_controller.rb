class TravelSchedulesController < ApplicationController
  before_action :set_travel_schedule, only: [:show, :edit, :update, :destroy]

  # GET /travel_schedules
  # GET /travel_schedules.json
  def index
    @travel_schedules = TravelSchedule.all
  end

  # GET /travel_schedules/1
  # GET /travel_schedules/1.json
  def show
  end

  # GET /travel_schedules/new
  def new
    @travel_schedule = TravelSchedule.new
  end

  # GET /travel_schedules/1/edit
  def edit
  end

  # POST /travel_schedules
  # POST /travel_schedules.json
  def create
    @travel_schedule = TravelSchedule.new(travel_schedule_params)

    respond_to do |format|
      if @travel_schedule.save
        format.html { redirect_to @travel_schedule, notice: 'Travel schedule was successfully created.' }
        format.json { render :show, status: :created, location: @travel_schedule }
      else
        format.html { render :new }
        format.json { render json: @travel_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_schedules/1
  # PATCH/PUT /travel_schedules/1.json
  def update
    respond_to do |format|
      if @travel_schedule.update(travel_schedule_params)
        format.html { redirect_to @travel_schedule, notice: 'Travel schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_schedule }
      else
        format.html { render :edit }
        format.json { render json: @travel_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_schedules/1
  # DELETE /travel_schedules/1.json
  def destroy
    @travel_schedule.destroy
    respond_to do |format|
      format.html { redirect_to travel_schedules_url, notice: 'Travel schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_schedule
      @travel_schedule = TravelSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_schedule_params
      params.require(:travel_schedule).permit(:name)
    end
end
