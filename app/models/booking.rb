class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :teetime
  
  validates_presence_of :user
  validates :start, :end, :overlap => {:exclude_edges => ["start", "end"], :scope => "tee_time_id"}
  validate :duration
  validate :max_number_user_bookigs
  
  def max_number_user_bookigs
    userBookings = Booking.where(:user_id => self.user_id)
    if(userBookings.size > 2)
      errors.add(:max_bookings, "You can't book more than 2 tee times")
    end
    
  end
  
  def duration
    if(TimeDifference.between(start, self.end).in_minutes > 20)
      errors.add(:duration_error, "can't be in longer than 20 mintues")
    end
  end
  
  def formatForDropDown(time)
    return time.strftime("%Y/%m/%d %R")
  end
  
end
