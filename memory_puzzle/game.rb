require_relative 'board'

class Game
    def initialize
        @board = Board.new
        @previous_guess = []

    end

    def play
        @board.populate
        until @board.won?
            @board.render
            value_1 = @board.reveal(prompt)
            value_2 = value_1
            if value_1 == value_2

        end
    end

    def prompt
        puts "Please enter the position of the card you'd like to flip (e.g. '2, 3')"
        user_input_arr = gets.chomp.split(",")
        user_input = user_input_arr.map {|ele| ele.to_i}
    end
end