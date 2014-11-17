class SuitcasesController < ApplicationController
  before_action do
    @passenger = Passenger.find(params[:passenger_id])
  end

  def index
    @suitcases = @passenger.suitcases
  end

  def show
    @suitcase = @passenger.suitcases.find(params[:id])
  end

  def new
    @suitcase = @passenger.suitcases.new
  end

  def create
    @suitcase = @passenger.suitcases.new(suitcase_params)
    if @suitcase.save
      redirect_to passenger_suitcase_path(@passenger, @suitcase)
    else
      render :new
    end
  end

  def edit
    @suitcase = @passenger.suitcases.find(params[:id])
  end

  def update
    @suitcase = @passenger.suitcases.find(params[:id])
    if @suitcase.update(suitcase_params)
      redirect_to passenger_suitcase_path(@passenger, @suitcase)
    else
      render :edit
    end
  end

  def destroy
    @suitcase = Suitcase.find(params[:id])
    @suitcase.destroy
    redirect_to passenger_suitcases_path(@passenger, @suitcase)
  end

  private

  def suitcase_params
    params.require(:suitcase).permit(:description)
  end

end
