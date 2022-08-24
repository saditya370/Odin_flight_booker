class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :arrival_airport_id
      t.integer :departure_airport_id
      t.float :flight_duration
      t.datetime :flight_date_time

      t.timestamps
    end
  end
end
