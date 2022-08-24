class Addc < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights,:flight_date_time,:flight_date
    add_column :flights,:departure_time ,:time
    add_column :flights,:arrival_time ,:time
  end
end
