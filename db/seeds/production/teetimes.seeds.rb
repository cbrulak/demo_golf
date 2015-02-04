require 'tee_time'

startTime = DateTime.strptime("09:00", "%H:%M")
duration = 20
endTime = DateTime.strptime("17:00", "%H:%M")

while(startTime < endTime) do
  teeTime = TeeTime.find_or_create_by(:start => startTime, :end => startTime + duration.minutes, :length => duration)
  teeTime.save!
  
  startTime = startTime + duration.minutes

end