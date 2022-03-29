#Ask user for input

puts "Hey there! Enter time durations in the following format:
(minutes).(seconds) hit enter after putting in each time duration

eg. 1.6
eg. 13.50
eg. 1.12

Hit enter on an empty line when you've entered all of the times you'd like to add up."

input_count = 0
minutes_array = Array.new
seconds_array = Array.new
chomped_string = "empty.:"

while chomped_string != ""
        chomped_string = gets.chomp
        if chomped_string.include? "."
        user_input = chomped_string.split(".")
        minutes_array << user_input[0].to_i
        seconds_array << user_input[1].to_i
        input_count += 1
        puts "You've entered #{input_count} duration(s)"
        elsif chomped_string.include? ":"
            user_input = chomped_string.split(":")
            minutes_array << user_input[0].to_i
            seconds_array << user_input[1].to_i
            input_count += 1
            puts "You've entered #{input_count} duration(s)"
        end
end

def sum_of(array)
    total = 0
    array.each do |item|
        total += item
    end
    return total
end

total_minutes = sum_of(minutes_array)
total_seconds = sum_of(seconds_array)

hours = 0
minutes = 0
seconds = 0

#deal with the total seconds
seconds += total_seconds % 60
minutes += total_seconds / 60

#deal with the total minutes
minutes += total_minutes % 60
hours += total_minutes / 60

puts "The total duration of the inputs is #{hours} hours, #{minutes} minutes and #{seconds} seconds."