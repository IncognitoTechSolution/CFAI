class MonetaryContributionsController < ApplicationController
  before_action :set_monetary_contribution, only: [:show, :edit, :update, :destroy]

  # GET /monetary_contributions
  # GET /monetary_contributions.json
  def index
    @monetary_contributions = MonetaryContribution.all
  end

  # GET /monetary_contributions/1
  # GET /monetary_contributions/1.json
  def show
  end

  # GET /monetary_contributions/new
  def new
    @monetary_contribution = MonetaryContribution.new
  end

  # GET /monetary_contributions/1/edit
  def edit
  end

  # POST /monetary_contributions
  # POST /monetary_contributions.json
  def create
    @monetary_contribution = MonetaryContribution.new(monetary_contribution_params)

    respond_to do |format|
      if @monetary_contribution.save
        format.html { redirect_to @monetary_contribution, notice: 'Monetary contribution was successfully created.' }
        format.json { render :show, status: :created, location: @monetary_contribution }
      else
        format.html { render :new }
        format.json { render json: @monetary_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monetary_contributions/1
  # PATCH/PUT /monetary_contributions/1.json
  def update
    respond_to do |format|
      if @monetary_contribution.update(monetary_contribution_params)
        format.html { redirect_to @monetary_contribution, notice: 'Monetary contribution was successfully updated.' }
        format.json { render :show, status: :ok, location: @monetary_contribution }
      else
        format.html { render :edit }
        format.json { render json: @monetary_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monetary_contributions/1
  # DELETE /monetary_contributions/1.json
  def destroy
    @monetary_contribution.destroy
    respond_to do |format|
      format.html { redirect_to monetary_contributions_url, notice: 'Monetary contribution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monetary_contribution
      @monetary_contribution = MonetaryContribution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monetary_contribution_params
      params.require(:monetary_contribution).permit(:report_id, :transaction_id, :entity_id, :entity_type_id, :candidate_id, :outofstatepac, :pacid, :date, :amount, :description, :mctotal)
    end
end
