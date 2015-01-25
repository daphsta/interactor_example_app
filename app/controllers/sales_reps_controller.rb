class SalesRepsController < ApplicationController
  before_action :set_sales_rep, only: [:show, :update, :destroy]

  # GET /sales_reps
  # GET /sales_reps.json
  def index
    @sales_reps = SalesRep.all

    render json: @sales_reps
  end

  # GET /sales_reps/1
  # GET /sales_reps/1.json
  def show
    render json: @sales_rep
  end

  # POST /sales_reps
  # POST /sales_reps.json
  def create
    @sales_rep = SalesRep.new(sales_rep_params)

    if @sales_rep.save
      render json: @sales_rep, status: :created, location: @sales_rep
    else
      render json: @sales_rep.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sales_reps/1
  # PATCH/PUT /sales_reps/1.json
  def update
    @sales_rep = SalesRep.find(params[:id])

    if @sales_rep.update(sales_rep_params)
      head :no_content
    else
      render json: @sales_rep.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sales_reps/1
  # DELETE /sales_reps/1.json
  def destroy
    @sales_rep.destroy

    head :no_content
  end

  private

    def set_sales_rep
      @sales_rep = SalesRep.find(params[:id])
    end

    def sales_rep_params
      params.require(:sales_rep).permit(:first_name, :last_name, :area)
    end
end
