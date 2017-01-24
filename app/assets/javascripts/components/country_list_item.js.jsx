var CountryListItem = React.createClass({
	render: function() {
		return (
			<tr>
				<td><p>{this.props.id}</p></td>
				<td><p>{this.props.name}</p></td>
				<td><p>{this.props.initials}</p></td>
			</tr>
		);
	}
});