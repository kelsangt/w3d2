require_relative 'card'

class Board

  def initialize
    @grid = Array.new(4) { Array.new(4) { [] } }
  end

  def populate
    card_values = 'AABBCCDDEEFFGGHH'.split('')
    card_values.shuffle!

    i = 0
    @grid.each do |row|
      row.each do |ele|
        letter = card_values[i]
        ele << Card.new(letter)
        i += 1
      end
    end
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def render
    @grid.each do |row|
        letters = []
        row.each do |ele|
            if ele[0].face_up == true
                letters << ele[0].face_value
            else
                letters << "_"
            end
        end
        puts letters.join(' ')
    end
  end

  def won?
    @grid.each do |row|
      row.each do |ele|
        if ele[0].face_up == false
          return false
        end
      end
    end
    true
  end

  def reveal(pos)
    self[pos][0].reveal
    self[pos][0].face_value
  end

  

end

