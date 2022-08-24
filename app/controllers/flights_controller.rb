class FlightsController < ApplicationController
  def index

    @flight= Flight.all.map{ |u| [ u.arrival_airport.airport_name,u.departure_airport.airport_name ] }
   
  end

 
end
