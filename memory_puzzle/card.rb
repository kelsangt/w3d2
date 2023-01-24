class Card
    attr_reader :face_value

    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    def display
        puts @face_value if @face_up
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def to_s
        @face_value.to_s
    end

    
end

my_card = Card.new('P')


[1, 2, 3, 4]

[4, 1, 3, 2]
