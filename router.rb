class Router
  def initialize(inputs_controller)
    @inputs_controller = inputs_controller
    @running = true
  end

  def run
    while @running
      display_tasks
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ''
    puts '1 - Start'
    puts '2 - Quit'
    puts ''
  end

  def route_action(action)
    case action
    when 1 then @inputs_controller.
    when 2 then stop
  end
end




# offer option to start that takes you to
