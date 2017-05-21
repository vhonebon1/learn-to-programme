def grandfatherClock(&block)
hour = Time.new.hour
if hour > 12
    hour = hour % 12
end
if hour == 0
    hour = 12
end
hour.times do
    block.call
end
end
grandfatherClock do
    puts "DONG"
end
