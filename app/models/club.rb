class Club < ActiveRecord::Base
  has_many :tee_times
  has_many :bookings, through: :tee_times
  after_save :pop_clubs
  
  def pop_clubs
    startTime = DateTime.strptime("09:00", "%H:%M")
    duration = 20
    endTime = DateTime.strptime("17:00", "%H:%M")

    while(startTime < endTime) do
      teeTime = tee_times.create(:start => startTime, :end => startTime + duration.minutes, :length => duration)
      teeTime.save!
  
      startTime = startTime + duration.minutes

    end
    
  end
end
