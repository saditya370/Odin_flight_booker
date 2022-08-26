class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_columns :bookings, :flight_id
    remove_columns :passangers, :passanger_id
  end
end
