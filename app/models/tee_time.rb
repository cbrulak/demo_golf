class TeeTime < ActiveRecord::Base
  has_many :booking
  belongs_to :club
  
  validates_presence_of :club
  
  def hasBooking
    if(booking.nil?)
      return false
    else 
      return booking.all.count > 0
    end
  end
  
  def getBooking
    return booking.first
  end
end
