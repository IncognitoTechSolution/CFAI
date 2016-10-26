class NonPoliticalExpendituresController < ApplicationController
  before_action :set_non_political_expenditure, only: [:show, :edit, :update, :destroy]

  # GET /non_political_expenditures
  # GET /non_political_expenditures.json
  def index
    @non_political_expenditures = NonPoliticalExpenditure.all
  end

  # GET /non_political_expenditures/1
  # GET /non_political_expenditures/1.json
  def show
  end

  # GET /non_political_expenditures/new
  def new
    @non_political_expenditure = NonPoliticalExpenditure.new
  end

  # GET /non_political_expenditures/1/edit
  def edit
  end

  # POST /non_political_expenditures
  # POST /non_political_expenditures.json
  def create
    @non_political_expenditure = NonPoliticalExpenditure.new(non_political_expenditure_params)

    respond_to do |format|
      if @non_political_expenditure.save
        format.html { redirect_to @non_political_expenditure, notice: 'Non political expenditure was successfully created.' }
        format.json { render :show, status: :created, location: @non_political_expenditure }
      else
        format.html { render :new }
        format.json { render json: @non_political_expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /non_political_expenditures/1
  # PATCH/PUT /non_political_expenditures/1.json
  def update
    respond_to do |format|
      if @non_political_expenditure.update(non_political_expenditure_params)
        format.html { redirect_to @non_political_expenditure, notice: 'Non political expenditure was successfully updated.' }
        format.json { render :show, status: :ok, location: @non_political_expenditure }
      else
        format.html { render :edit }
        format.json { render json: @non_political_expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /non_political_expenditures/1
  # DELETE /non_political_expenditures/1.json
  def destroy
    @non_political_expenditure.destroy
    respond_to do |format|
      format.html { redirect_to non_political_expenditures_url, notice: 'Non political expenditure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_political_expenditure
      @non_political_expenditure = NonPoliticalExpenditure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def non_political_expenditure_params
      params.require(:non_political_expenditure).permit(:report_id, :entity_id, :expenditure_category_id, :transaction_id, :date, :purpose, :amount, :npetotal)
    end
end
