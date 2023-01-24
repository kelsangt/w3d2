class Card
    def initialize
        @face_value 
        @face_up? = false
    end

    def display
        puts @face_value if @face_up? 
    end

    def hide
        @face_up? = false
    end

    def reveal
        @face_up? = true
    end

    
end