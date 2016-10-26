class UnpaidIncurredObligationsController < ApplicationController
  before_action :set_unpaid_incurred_obligation, only: [:show, :edit, :update, :destroy]

  # GET /unpaid_incurred_obligations
  # GET /unpaid_incurred_obligations.json
  def index
    @unpaid_incurred_obligations = UnpaidIncurredObligation.all
  end

  # GET /unpaid_incurred_obligations/1
  # GET /unpaid_incurred_obligations/1.json
  def show
  end

  # GET /unpaid_incurred_obligations/new
  def new
    @unpaid_incurred_obligation = UnpaidIncurredObligation.new
  end

  # GET /unpaid_incurred_obligations/1/edit
  def edit
  end

  # POST /unpaid_incurred_obligations
  # POST /unpaid_incurred_obligations.json
  def create
    @unpaid_incurred_obligation = UnpaidIncurredObligation.new(unpaid_incurred_obligation_params)

    respond_to do |format|
      if @unpaid_incurred_obligation.save
        format.html { redirect_to @unpaid_incurred_obligation, notice: 'Unpaid incurred obligation was successfully created.' }
        format.json { render :show, status: :created, location: @unpaid_incurred_obligation }
      else
        format.html { render :new }
        format.json { render json: @unpaid_incurred_obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unpaid_incurred_obligations/1
  # PATCH/PUT /unpaid_incurred_obligations/1.json
  def update
    respond_to do |format|
      if @unpaid_incurred_obligation.update(unpaid_incurred_obligation_params)
        format.html { redirect_to @unpaid_incurred_obligation, notice: 'Unpaid incurred obligation was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpaid_incurred_obligation }
      else
        format.html { render :edit }
        format.json { render json: @unpaid_incurred_obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpaid_incurred_obligations/1
  # DELETE /unpaid_incurred_obligations/1.json
  def destroy
    @unpaid_incurred_obligation.destroy
    respond_to do |format|
      format.html { redirect_to unpaid_incurred_obligations_url, notice: 'Unpaid incurred obligation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpaid_incurred_obligation
      @unpaid_incurred_obligation = UnpaidIncurredObligation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpaid_incurred_obligation_params
      params.require(:unpaid_incurred_obligation).permit(:report_id, :entity_id, :transaction_id, :expenditure_category_id, :candidate_id, :travel_id, :expend_type_id, :description, :date, :amount, :uitotal)
    end
end
