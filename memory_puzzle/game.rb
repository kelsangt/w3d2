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
            
            user_input = prompt
            card_1 = @board[user_input][0]
            @board.reveal(user_input)

            @board.render
            
            user_input_2 = prompt
            card_2 = @board[user_input_2][0]
            @board.reveal(user_input_2)

            @board.render

            if card_1.face_value != card_2.face_value
              puts 'Not a match! *press enter to continue*'
              gets

              card_1.face_up = false
              card_2.face_up = false
            else
              puts 'Correct! Good job. *press enter to continue*'
              gets
            end

              


        end
    end

    def prompt
        puts "Please enter the position of the card you'd like to flip (e.g. '2, 3')"
        user_input_arr = gets.chomp.split(",")
        user_input = user_input_arr.map {|ele| ele.to_i}
    end
end