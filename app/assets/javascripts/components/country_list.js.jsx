var CountryList = React.createClass({
	render: function() {
		return (
			<div className="row">
				<div className="col-xs-12">
					<table className="table table-hover">
						<tr>
							<th>#</th>
							<th>Country Name</th>
							<th>Country Initials</th>
						</tr>
							{this.props.response.map(function(country){
							  return <CountryListItem name={country.name} id={country.id} initials={country.initials}/>;
							})}
					</table>
				</div>
			</div>
		);
	}
});


