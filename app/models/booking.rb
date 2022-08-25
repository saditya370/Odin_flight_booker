class Booking < ApplicationRecord
    belongs_to :flight
    belongs_to :passanger



    accepts_nested_attributes_for :passanger
end
