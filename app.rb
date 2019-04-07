require_relative 'app/models/plateau'
require_relative 'app/models/rover'
require_relative 'app/controllers/rovers_controller'
require_relative 'router'

router = Router.new

router.start_program
