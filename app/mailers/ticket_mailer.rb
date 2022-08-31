class TicketMailer < ApplicationMailer

    default from: "aditya@gmail.com"

    def booking_mail
        @booking = params[:booking]
    
        @url  = "http://google.com"
        @booking.passangers.each do |x|
         @a = x
        mail(to: x.email,subject: "Your Booking is Confirmed")
    end
    end 

end
