class ReportSubtotalsController < ApplicationController
  before_action :set_report_subtotal, only: [:show, :edit, :update, :destroy]

  # GET /report_subtotals
  # GET /report_subtotals.json
  def index
    @report_subtotals = ReportSubtotal.all
  end

  # GET /report_subtotals/1
  # GET /report_subtotals/1.json
  def show
  end

  # GET /report_subtotals/new
  def new
    @report_subtotal = ReportSubtotal.new
  end

  # GET /report_subtotals/1/edit
  def edit
  end

  # POST /report_subtotals
  # POST /report_subtotals.json
  def create
    @report_subtotal = ReportSubtotal.new(report_subtotal_params)

    respond_to do |format|
      if @report_subtotal.save
        format.html { redirect_to @report_subtotal, notice: 'Report subtotal was successfully created.' }
        format.json { render :show, status: :created, location: @report_subtotal }
      else
        format.html { render :new }
        format.json { render json: @report_subtotal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_subtotals/1
  # PATCH/PUT /report_subtotals/1.json
  def update
    respond_to do |format|
      if @report_subtotal.update(report_subtotal_params)
        format.html { redirect_to @report_subtotal, notice: 'Report subtotal was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_subtotal }
      else
        format.html { render :edit }
        format.json { render json: @report_subtotal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_subtotals/1
  # DELETE /report_subtotals/1.json
  def destroy
    @report_subtotal.destroy
    respond_to do |format|
      format.html { redirect_to report_subtotals_url, notice: 'Report subtotal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_subtotal
      @report_subtotal = ReportSubtotal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_subtotal_params
      params.require(:report_subtotal).permit(:report_id, :coh_payment_id, :credit_id, :expenditure_category_id, :expenditure_id, :investment_purchase_id, :loan_id, :monetary_contribution_id, :non_monetary_contribution_id, :non_political_expenditure_id, :pledge_id, :unpaid_incurred_obligation_id)
    end
end
