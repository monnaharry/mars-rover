class RoversController
  def initialize
    @rovers = []
  end

  def create_rovers(input, plateau)
    # [[["1", "2", "N"], ["LMLMLMLMM"]], [["3", "3", "E"], ["MMRMMRMRRM"]]]
    input.each do |info|
      x = info[0][0].to_i
      y = info[0][1].to_i
      orientation = info[0][2]
      instructions = info[1]
      @rovers << Rover.new(x: x, y: y, orientation: orientation, plateau: plateau, instructions: instructions)
    end
  end

  def update_position
    @rovers.map!(&:interpret_input)
  end

  def list_rovers
    @rovers.each do |rover|
      # puts rover.x rover.y rover.orientation
      puts "#{rover.x} #{rover.y} #{rover.orientation}"
    end
  end
end
