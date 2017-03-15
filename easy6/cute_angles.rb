=begin
Notes: 
  - input: floating point value of an angle between 0 and 360
  - ouput: string that represents that angle in degrees, minutes, seconds
  - use degree symbol (˚) to represent degrees, a single quote (') for minutes
    and double quote (") for seconds.
  - there are 60 minutes in a degree, and 60 secondes in a minute

Example:
  - dms(30) == 30˚00'00"
  - dms(76.73) == 76˚43'48"

Data Structure:
  - math
  - regex

Algorithm:
  - set rules for values of degree and seconds
  - convert angle into degrees, minutes, and seconds

=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  total_seconds = (float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
