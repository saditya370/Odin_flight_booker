class AddC < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight ,index: true
    add_reference :passangers, :booking ,index: true

  end
end
