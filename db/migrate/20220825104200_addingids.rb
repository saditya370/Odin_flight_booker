class Addingids < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings,:flight_id,:integer
    add_column :bookings,:passanger_id,:integer
  end
end
