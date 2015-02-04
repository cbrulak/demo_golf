require 'test_helper'

class TeeTimeTest < ActiveSupport::TestCase
  test "tee time has a booking" do
    club = Club.create(:name => "bluc")
    club.save!
     teeTime = club.tee_times.create(:start => DateTime.strptime("09:00", "%H:%M"), :length => 20, :end => DateTime.strptime("09:20", "%H:%M"), :club_id => 1)
     teeTime.save!
     assert !teeTime.hasBooking
     
     booking = teeTime.booking.create(:start => DateTime.strptime("09:00", "%H:%M"), :end => DateTime.strptime("09:20", "%H:%M"))
     
     user = User.new
     user.name = "Eric Rubeno"
     user.save!
     booking.user = user # because of the belong_to association we need to do an indirect way of testing.
     booking.save!
     
     
     assert teeTime.hasBooking
  end
end
