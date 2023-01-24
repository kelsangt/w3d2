require_relative 'board'
require_relative 'humanplayer'

class Game
    attr_reader :board

    def initialize
        @player = HumanPlayer.new
        @board = Board.new
        @previous_guess = []

    end

    def play
        @board.populate
        until @board.won?
            @board.render
            
            user_input = @player.prompt

            if good_entry?(user_input) == false
                gets
                system('clear')
                next
            end

            card_1 = @board[user_input][0]
            @board.reveal(user_input)

            @board.render
            
            user_input_2 = @player.prompt

            if good_entry?(user_input_2) == false
                card_1.face_up = false
                gets
                system('clear')
                next
            end

            card_2 = @board[user_input_2][0]
            @board.reveal(user_input_2)

            @board.render

            if user_input == user_input_2
                puts 'You cannot make the same choice twice! *press enter to continue*'
                gets
                card_1.face_up = false
                card_2.face_up = false
                system("clear")
                next
            end

            if card_1.face_value != card_2.face_value
              puts 'Not a match! *press enter to continue*'
              gets

              card_1.face_up = false
              card_2.face_up = false
            else
              puts 'Correct! Good job. *press enter to continue*'
              gets
            end

            system("clear")
              


        end
    end

    def good_entry?(pos)
        if @board[pos][0].face_up == true
            puts 'You cannot choose a spot that is already revealed! *press enter to continue*'
            return false
        else
            return true
        end
    end

    
end