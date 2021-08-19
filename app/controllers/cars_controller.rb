class CarsController < ApplicationController
  def index
    @cars = Car.all
    if params[:query].present?
      sql_query = "brand ILIKE :query OR model ILIKE :query"
      @cars = Car.where(sql_query, query: "%#{params[:query]}%")
    else
      @cars = Car.all
    end

    if params[:fuel].present?
      @cars = @cars.where(fuel: params[:fuel])
    end

     if params[:gearbox].present?
      @cars = @cars.where(gearbox: params[:gearbox])
    end

    if params[:price].present?
      prices = params[:price].delete('€').split('-')
      @cars = @cars.where("price > #{prices.first.to_f} AND price < #{prices.last.to_f}")
    end

    if params[:address].present?
      @cars = @cars.where(address: params[:address])
    end


    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('car.png')
      }
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
    @markers = [{
      lat: @car.latitude,
      lng: @car.longitude,
      info_window: render_to_string(partial: "info_window", locals: { car: @car }),
      image_url: helpers.asset_url('car.png')
    }]

    @bookings       = @car.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.date_start,
        to:   booking.date_end
      }
    end
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
