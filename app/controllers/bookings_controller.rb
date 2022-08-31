class BookingsController < ApplicationController
 def index
  @bookings = Booking.all
 end
 
  def new
    @booking = Booking.new
    @seat = params[:seats].to_i
    
   @seat.times{ @booking.passangers.build}
    @flights = Flight.find_by(params[:flight_id])
    
  end

  def create
    @flights = Flight.find_by(params[:flight_id])
   
    @booking = Booking.new(booking_params)
   
    if @booking.save
      flash[:notice] =  "Bookings Successfull! "
      TicketMailer.with(booking: @booking).booking_mail.deliver_now!
      redirect_to booking_path(@booking)
    else
      render :new,status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params

      params.require(:booking).permit(:flight_id,{passangers_attributes: [:passanger_id,:passanger_id,:name,:email]})
  end


end
