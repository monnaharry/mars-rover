class RoversController
  def initialize(input)
    @input = input
    @view = RoverView.new
    @rovers = []
  end

  def create_rovers
    # [[["1", "2", "N"], ["LMLMLMLMM"]], [["3", "3", "E"], ["MMRMMRMRRM"]]]
    @input.each do |info|
      x = info[0][0].to_i
      y = info[0][1].to_i
      orientation = info[0][2]
      instructions = info[1]
      @rovers << Rover.new(x: x, y: y, orientation: orientation, plateau: @plateau, instructions: instructions)
    end
  end

  def update_position
    @rovers.map(interpret_input)
  end
end
