# plateau behavior
class Plateau
  attr_reader :max_x, :max_y
  def initialize(attributes = {})
    @max_x = attributes[:max_x]
    @max_y = attributes[:max_y]
  end
end
