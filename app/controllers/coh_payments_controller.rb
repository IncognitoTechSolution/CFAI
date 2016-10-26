class CohPaymentsController < ApplicationController
  before_action :set_coh_payment, only: [:show, :edit, :update, :destroy]

  # GET /coh_payments
  # GET /coh_payments.json
  def index
    @coh_payments = CohPayment.all
  end

  # GET /coh_payments/1
  # GET /coh_payments/1.json
  def show
  end

  # GET /coh_payments/new
  def new
    @coh_payment = CohPayment.new
  end

  # GET /coh_payments/1/edit
  def edit
  end

  # POST /coh_payments
  # POST /coh_payments.json
  def create
    @coh_payment = CohPayment.new(coh_payment_params)

    respond_to do |format|
      if @coh_payment.save
        format.html { redirect_to @coh_payment, notice: 'Coh payment was successfully created.' }
        format.json { render :show, status: :created, location: @coh_payment }
      else
        format.html { render :new }
        format.json { render json: @coh_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coh_payments/1
  # PATCH/PUT /coh_payments/1.json
  def update
    respond_to do |format|
      if @coh_payment.update(coh_payment_params)
        format.html { redirect_to @coh_payment, notice: 'Coh payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @coh_payment }
      else
        format.html { render :edit }
        format.json { render json: @coh_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coh_payments/1
  # DELETE /coh_payments/1.json
  def destroy
    @coh_payment.destroy
    respond_to do |format|
      format.html { redirect_to coh_payments_url, notice: 'Coh payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coh_payment
      @coh_payment = CohPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coh_payment_params
      params.require(:coh_payment).permit(:report_id, :entity_id, :expenditure_category_id, :candidate_id, :travel_id, :date, :amount, :description, :cptotal)
    end
end
