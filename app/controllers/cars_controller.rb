class CarsController < ApplicationController

  def index
    @cars = Car.all

       @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end


  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.owner = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :fuel, :price, :gearbox, :owner, :photo_url)
  end
end
