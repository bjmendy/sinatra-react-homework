var React = require('react');

componentDidMount: function() {
	var state = this.state;
	var self = this;

	request.get('http://localhost:9393/items')
	.end(function(err,data){
		state.data = data.body;
		self.setState(state)
	})
},
createItem: function(candle){
	var state = this.state;
	var self = this;
	request.post('http://localhost:9393/items')
	.send({name: candle})
	.end(function(error, data){

	})

render: function(){
	return (
		<div>
		<form>
		<FormComponent onItemSubmit={this.createCandle}/>
		</form>
		<ul>
			{this.state.data.map(function(candle, i){
				return(
					<li key={i}>{candle.name}</li>
					)
			})}
		</ul>
		</div>
	)









ReactDOM.render(
	<MainComponent/>, document.getElementById('container');
	)