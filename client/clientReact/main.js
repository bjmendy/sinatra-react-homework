var React = require('react');
var ReactDOM = require('require-dom');
var request = require('superagent');
var FormComponent = require('./Form');

var MainComponent = React.createClass({
getInitialState: function() {
	return {data: []}
},

componentDidMount: function() {
	var state = this.state;
	var self = this;

	request.get('http://localhost:9393/items')
	.end(function(err,data){
		state.data = data.body;
		self.setState(state)
	})
},

render: function(){

   var newItem = this.state.data.map(function(candle, i){
					return(
						<li key={i}>{candle.name}</li>
					)
				})

	return (
		<div>
			<FormComponent/>
			<ul>
				{newItem}
			</ul>
		</div>
	)
}

})

ReactDOM.render(
	<MainComponent/>, document.getElementById('container')
	)