class BookingsController < ApplicationController
 def index
  @bookings = Booking.all
 end
 
  def new
    @booking = Booking.new
  end

  def create
    
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] =  "Bookings Successfull! "
    else
      render :new,status: :unprocessable_entity
    end
  end

  def show

  end

  private
  def booking_params

      params.require(:booking).permit(:flight_id, :passanger_id,:passangers_attributes => [:name,:email])
  end


end
