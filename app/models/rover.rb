class Rover
  attr_accessor :x, :y, :plateau, :orientation
  def initialize(attributes = {})
    @x = attributes[:x]
    @y = attributes[:y]
    @plateau = attributes[:plateau]
    @orientation = attributes[:orientation]
  end

  def left
    case @orientation
    when 'N' then @orientation = 'W'
    when 'E' then @orientation = 'N'
    when 'S' then @orientation = 'E'
    when 'W' then @orientation = 'S'
    end
  end

  def right
    case @orientation
    when 'N' then @orientation = 'E'
    when 'E' then @orientation = 'S'
    when 'S' then @orientation = 'W'
    when 'W' then @orientation = 'N'
    end
  end

  def move
    case @orientation
    when 'N' then @y += 1
    when 'E' then @x += 1
    when 'S' then @y -= 1
    when 'W' then @x -= 1
    end
  end
end

# r = Rover.new(orientation: 'E', x: 0, y: 0)

# r.right
# p r.orientation

# p r
# r.move
# p r
