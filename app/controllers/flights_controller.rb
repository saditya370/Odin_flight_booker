class FlightsController < ApplicationController
  def index

    @flights = Flight.all
    @avail_flights = Flight.where(arrival_airport_id: params[:arrival_airport_id],departure_airport_id: params[:departure_airport_id] )

     
    
    
    @flight_options= Airport.all.map{ |u| [ u.airport_name,u.id ] }
    @flight_options1 = Flight.all.map{|f| [f.flight_date,f.flight_date]}
    
    # @avail_f  light = Flight.select(arrival_airport :params[:sri])
   
  end

  def show

  @flights = Flight.all

  end
  private

end
