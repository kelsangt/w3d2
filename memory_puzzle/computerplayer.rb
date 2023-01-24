class ComputerPlayer
    def initialize
        @known_cards = Hash.new {|h, k| h[k] = []}
        @matched_cards = []
        
    end
end