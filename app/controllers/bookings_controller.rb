class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(car_params)
    @booking.customer = current_user
    @booking.car = @car
    if @booking.save
      redirect_to booking_path(@booking)
    else
      @bookings       = @car.bookings
      @bookings_dates = @bookings.map do |booking|
      {
        from: booking.date_start,
        to:   booking.date_end
      }
      end
      render 'cars/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def car_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end
