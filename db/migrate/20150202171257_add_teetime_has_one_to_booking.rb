class AddTeetimeHasOneToBooking < ActiveRecord::Migration
  def change
    add_reference :bookings, :tee_time, index: true
    add_reference :tee_times, :bookings, index: true
  end
end
