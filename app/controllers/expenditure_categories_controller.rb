class ExpenditureCategoriesController < ApplicationController
  before_action :set_expenditure_category, only: [:show, :edit, :update, :destroy]

  # GET /expenditure_categories
  # GET /expenditure_categories.json
  def index
    @expenditure_categories = ExpenditureCategory.all
  end

  # GET /expenditure_categories/1
  # GET /expenditure_categories/1.json
  def show
  end

  # GET /expenditure_categories/new
  def new
    @expenditure_category = ExpenditureCategory.new
  end

  # GET /expenditure_categories/1/edit
  def edit
  end

  # POST /expenditure_categories
  # POST /expenditure_categories.json
  def create
    @expenditure_category = ExpenditureCategory.new(expenditure_category_params)

    respond_to do |format|
      if @expenditure_category.save
        format.html { redirect_to @expenditure_category, notice: 'Expenditure category was successfully created.' }
        format.json { render :show, status: :created, location: @expenditure_category }
      else
        format.html { render :new }
        format.json { render json: @expenditure_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenditure_categories/1
  # PATCH/PUT /expenditure_categories/1.json
  def update
    respond_to do |format|
      if @expenditure_category.update(expenditure_category_params)
        format.html { redirect_to @expenditure_category, notice: 'Expenditure category was successfully updated.' }
        format.json { render :show, status: :ok, location: @expenditure_category }
      else
        format.html { render :edit }
        format.json { render json: @expenditure_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenditure_categories/1
  # DELETE /expenditure_categories/1.json
  def destroy
    @expenditure_category.destroy
    respond_to do |format|
      format.html { redirect_to expenditure_categories_url, notice: 'Expenditure category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expenditure_category
      @expenditure_category = ExpenditureCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expenditure_category_params
      params.require(:expenditure_category).permit(:category)
    end
end
