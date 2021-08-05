require 'cookbook'    # You need to create this file!
require 'controller'  # You need to create this file!
require 'router'

csv_file   = File.join(__dir__, 'recipes.csv')
cookbook   = Cookbook.new(csv_file)
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run
