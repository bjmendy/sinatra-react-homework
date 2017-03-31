class CandleController < ApplicationController

	  options "*" do
    response.headers["Allow"] = "HEAD,GET,POST,PUT,DELETE,OPTIONS"

    # Needed for AngularJS
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    response['Access-Control-Allow-Origin'] = '*'

    "yay"
  end

get '/' do
	@candles = Candle.all
	@candles.to_json

end

get '/:id' do
	content_type :json
	id = params[:id]
	@candle = Candle.find(id)
	@candle.to_json

end

post '/' do
	response['Access-Control-Allow-Headers'] = '*'
	content_type :json
	id = params[:id]
	@candle = Candle.new
	@candle.name = request.body.read["name"]
	candle.save

	@candles = Candle.all
	@candles.to_json

end

patch '/:id' do
	content_type :json
	id = params[:id]
	@candle = Candle.find(id)
	@candle.name = params[:title]
	@candles.to_json

end


delete '/:id' do
	content_type :json
	id = params[:id]
	@candle = Candle.find(id)
	@candle.destroy

	@candles = Candle.all
	@candles.to_json

end


end