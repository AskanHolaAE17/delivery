# frozen_string_literal: true

# Controller to see the list of Couriers
class CouriersController < ApplicationController
  before_action :set_courier, only: %i[show edit update destroy]

  def index
    @couriers = Courier.all
  end

  def new
    @courier = Courier.new
  end

  def create
    @courier = Courier.new(courier_params)

    if @courier.save
      redirect_to @courier, notice: "Запис про кур'єра було успiшно створено."
    else
      render :new
    end
  end

  def show 
    @package = @courier.packages.build
    @packages = Package.where courier_id: @courier.id
  end

  def edit; end

  def update
    if @courier.update(courier_params)
      redirect_to @courier, notice: "Запис про кур'єра було успiшно видалено."
    else
      render :edit
    end
  end

  def destroy
    @courier.destroy
    redirect_to couriers_url, notice: "Запис про кур'єра було успiшно видалено."
  end


  private

  def set_courier
    @courier = Courier.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def courier_params
    params.require(:courier).permit(:name, :email)
  end
end
