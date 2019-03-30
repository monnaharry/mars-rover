class Input
  attr_accessor :data
  def initialize(attributes = {})
    @data = attributes[:data]
  end

  def plateau_dimensions
    [@data.split[0].to_i, @data.split[1].to_i]
  end

  def parse
    @input = @data.split("\n")
    @input = @input.map { |item| item.split(' ') }
    @input.shift
    @input = @input.each_slice(2).to_a
  end
end

# test = "5 5
# 1 2 N
# LMLMLMLMM
# 3 3 E
# MMRMMRMRRM"

# i = Input.new(data: test)
# p i.parse
