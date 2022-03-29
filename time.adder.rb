#Ask user for input

puts "Hey there! Enter time durations in the following format:
(minutes).(seconds) hit enter after putting in each time duration

eg. 1.6
eg. 13.50
eg. 1.12

Hit enter on an empty line when you've entered all of the times you'd like to add up."



# time_durations = Array.new

# while time_durations.last != ""
#         time_durations << gets.chomp
# end

# time_durations.delete_at(-1)

# use % to have remainders

#This first time, I'm going to try splitting the gets.chomp into a minutes array and a seconds array

total_minutes = Array.new
total_seconds = Array.new
chomped_string = "empty:"

while chomped_string != ""
        # if chomped_string.include? "."
        chomped_string = gets.chomp
        user_input = chomped_string.split(".")
        total_minutes << user_input[0]
        total_seconds << user_input[1]
        # elsif chomped_string.include? ":"
        # chomped_string = gets.chomp
        # user_input = chomped_string.split(":")
        # total_minutes << user_input[0]
        # total_seconds << user_input[1]
        # else
        # puts "I don't know how to deal with your input"
        # chomped_string = ""
        # end
end
