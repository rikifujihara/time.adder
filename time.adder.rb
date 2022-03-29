#Ask user for input

puts "Hey there! Enter time durations in the following format:
(minutes).(seconds) hit enter after putting in each time duration

eg. 1.6
eg. 13.50
eg. 1.12

Hit enter on an empty line when you've entered all of the times you'd like to add up."

time_durations = Array.new

while time_durations.last != "".to_f
        time_durations << gets.chomp.to_f
end

# time_durations.delete_at(-1)
time_durations.delete_at(-1)
