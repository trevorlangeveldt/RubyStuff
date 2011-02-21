require 'redis'

redis = Redis.new

@j = 10000
 
for i in 1000000...10000000
  redis.set "Position: #{i}", "Value: #{@j}"
  @u = redis.get "Position: #{i}"
  puts @u
  @j = @j + 1
end