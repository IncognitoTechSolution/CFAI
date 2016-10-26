class NonMonetaryContributionsController < ApplicationController
  before_action :set_non_monetary_contribution, only: [:show, :edit, :update, :destroy]

  # GET /non_monetary_contributions
  # GET /non_monetary_contributions.json
  def index
    @non_monetary_contributions = NonMonetaryContribution.all
  end

  # GET /non_monetary_contributions/1
  # GET /non_monetary_contributions/1.json
  def show
  end

  # GET /non_monetary_contributions/new
  def new
    @non_monetary_contribution = NonMonetaryContribution.new
  end

  # GET /non_monetary_contributions/1/edit
  def edit
  end

  # POST /non_monetary_contributions
  # POST /non_monetary_contributions.json
  def create
    @non_monetary_contribution = NonMonetaryContribution.new(non_monetary_contribution_params)

    respond_to do |format|
      if @non_monetary_contribution.save
        format.html { redirect_to @non_monetary_contribution, notice: 'Non monetary contribution was successfully created.' }
        format.json { render :show, status: :created, location: @non_monetary_contribution }
      else
        format.html { render :new }
        format.json { render json: @non_monetary_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /non_monetary_contributions/1
  # PATCH/PUT /non_monetary_contributions/1.json
  def update
    respond_to do |format|
      if @non_monetary_contribution.update(non_monetary_contribution_params)
        format.html { redirect_to @non_monetary_contribution, notice: 'Non monetary contribution was successfully updated.' }
        format.json { render :show, status: :ok, location: @non_monetary_contribution }
      else
        format.html { render :edit }
        format.json { render json: @non_monetary_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /non_monetary_contributions/1
  # DELETE /non_monetary_contributions/1.json
  def destroy
    @non_monetary_contribution.destroy
    respond_to do |format|
      format.html { redirect_to non_monetary_contributions_url, notice: 'Non monetary contribution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_monetary_contribution
      @non_monetary_contribution = NonMonetaryContribution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def non_monetary_contribution_params
      params.require(:non_monetary_contribution).permit(:report_id, :transaction_id, :entity_id, :travel_id, :candidate_id, :date, :outofstatepac, :pacid, :amount, :description, :nmctotal)
    end
end
