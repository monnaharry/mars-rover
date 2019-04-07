class Router
  def initialize
    @rovers_controller = RoversController.new
  end

  def start_program
    file = ask_for_file
    @input = file_to_array(file)
    @plateau = create_plateau(@input)
    @instructions = parse_rovers(@input)
    @rovers_controller.create_rovers(@instructions, @plateau)
    @rovers_controller.update_position
    @rovers_controller.list_rovers
  end

  def file_to_array(file)
    @input = []
    File.open(file).each do |line|
      @input << line.strip
    end
    @input
  end

  def ask_for_file
    puts 'What is the input from NASA? Please type a file path.'
    gets.chomp
  end

  def create_plateau(input)
    coordinates = input.shift.split(' ')
    Plateau.new(max_x: coordinates[0].to_i, max_y: coordinates[1].to_i)
  end

  def parse_rovers(input)
    input.map! { |item| item.split(' ') }
    input.each_slice(2).to_a
  end
end
