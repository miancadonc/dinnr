require_relative './config/environment'

use Rack::MethodOverride
use RecipesController
use RecipeBooksController
use UsersController
run ApplicationController