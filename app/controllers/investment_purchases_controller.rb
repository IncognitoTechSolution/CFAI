class InvestmentPurchasesController < ApplicationController
  before_action :set_investment_purchase, only: [:show, :edit, :update, :destroy]

  # GET /investment_purchases
  # GET /investment_purchases.json
  def index
    @investment_purchases = InvestmentPurchase.all
  end

  # GET /investment_purchases/1
  # GET /investment_purchases/1.json
  def show
  end

  # GET /investment_purchases/new
  def new
    @investment_purchase = InvestmentPurchase.new
  end

  # GET /investment_purchases/1/edit
  def edit
  end

  # POST /investment_purchases
  # POST /investment_purchases.json
  def create
    @investment_purchase = InvestmentPurchase.new(investment_purchase_params)

    respond_to do |format|
      if @investment_purchase.save
        format.html { redirect_to @investment_purchase, notice: 'Investment purchase was successfully created.' }
        format.json { render :show, status: :created, location: @investment_purchase }
      else
        format.html { render :new }
        format.json { render json: @investment_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investment_purchases/1
  # PATCH/PUT /investment_purchases/1.json
  def update
    respond_to do |format|
      if @investment_purchase.update(investment_purchase_params)
        format.html { redirect_to @investment_purchase, notice: 'Investment purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @investment_purchase }
      else
        format.html { render :edit }
        format.json { render json: @investment_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investment_purchases/1
  # DELETE /investment_purchases/1.json
  def destroy
    @investment_purchase.destroy
    respond_to do |format|
      format.html { redirect_to investment_purchases_url, notice: 'Investment purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_purchase
      @investment_purchase = InvestmentPurchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_purchase_params
      params.require(:investment_purchase).permit(:report_id, :entity_id, :expend_type_id, :transaction_id, :candidate_id, :date, :amount, :description, :iptotal)
    end
end
