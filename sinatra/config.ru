require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/CandleController'

require './models/CandleModel'

map('/') {run ApplicationController}
map('/candles') {run CandleController}