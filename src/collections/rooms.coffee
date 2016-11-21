@Rooms = new Meteor.Collection('rooms');

Schemas.Rooms = new SimpleSchema
	building_name:
		type: String
		label: "Building Name"
		autoform:
			options: ->
				_.map Buildings.find({}).fetch(), (building)->
					label: building.name
					value: building.name

	room_number:
		type: Number


	type:
		type: Number
		autoform:
		  type: "select-radio-inline",
		  options: ->
		  	[
		      {label: "Basic Single", value: 1},
		      {label: "Single", value: 2},
			  	{label: "Apartment", value: 3},
		      {label: "Townhouse", value: 4}
		    ];

	capacity:
		type: Number
		autoform:
		  type: "select-radio-inline",
		  options: ->
		  	[
		      {label: "1", value: 1},
		      {label: "2", value: 2},
		    ];

	amenities:
		type: String
		optional: true,
		autoform:
			type: "select-checkbox-inline",
			autoform:
				options: ->
					_.map formParameters.find({}).fetch(), (amenities)->
						console.log(amenities)
						label: amenities
						value: amenities

	description:
		type: String
		autoform:
			rows: 5

	occupants:
		type: String
		optional: true


	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()


Rooms.attachSchema(Schemas.Rooms)

Rooms.helpers
	building: ->
		building = buildings.find().fetch()

	amenities: ->
		amenities = formParameters.find().fetch()
