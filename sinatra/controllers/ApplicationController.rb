class ApplicationController < Sinatra::Base

require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'candles'
	)

not_found do
	"not found"
end



end