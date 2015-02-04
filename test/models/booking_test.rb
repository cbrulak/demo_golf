require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  test "booking requires a user" do
    booking = Booking.new

    booking.start = Time.now
    booking.end = Time.now
    assert_not booking.save #no user, no save
    user = User.new
    user.name = "Eric Rubeno"
    user.save!
    
    
    booking.user = user 
    assert booking.save
  end
  
end
