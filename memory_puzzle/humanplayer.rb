class HumanPlayer
    def prompt
        puts "Please enter the position of the card you'd like to flip (e.g. '2, 3')"
        user_input_arr = gets.chomp.split(",")
        user_input = user_input_arr.map {|ele| ele.to_i}
        while user_input[0] < 0 || user_input[0] > 3 || user_input[1] < 0 || user_input[1] > 3
            puts "Invalid input, please try again"
            user_input_arr = gets.chomp.split(",")
            user_input = user_input_arr.map {|ele| ele.to_i}
        end
        user_input
    end
end