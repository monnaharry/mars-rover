require_relative 'plateau'

class Rover
  attr_accessor :x, :y, :plateau, :orientation
  def initialize(attributes = {})
    @x = attributes[:x]
    @y = attributes[:y]
    @plateau = attributes[:plateau]
    @orientation = attributes[:orientation]
    @instructions = attributes[:instructions]
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
    return self if at_edge?

    case @orientation
    when 'N' then @y += 1
    when 'E' then @x += 1
    when 'S' then @y -= 1
    when 'W' then @x -= 1
    end
  end

  def at_edge?
    true if @plateau.max_x == @x || @plateau.max_y == @y
  end

  def interpret_input
    @instructions.each_char do |command|
      case command
      when 'L' then left
      when 'R' then right
      when 'M' then move
      end
    end
  end
end

pl = Plateau.new(4, 4)

r = Rover.new(orientation: 'N', x: 0, y: 0, plateau: pl, instructions: 'MMMMMM')

r.interpret_input
p r.at_edge?
