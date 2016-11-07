@Applications = new Meteor.Collection('applications');

Schemas.Application = new SimpleSchema

	type:
		type: Number
		optional: true
		autoform:
		  type: "select-radio-inline",
		  options: ->
		  	[
		      {label: "Basic Single", value: 1},
		      {label: "Single", value: 2},
			  {label: "Apartment", value: 3},
		      {label: "Townhouse", value: 4}
		    ];

	building_name:
		type: String
		label: "Building Name"
		optional: true
		autoform:
			options: ->
				_.map Buildings.find({}).fetch(), (building)->
					label: building.name
					value: building._id

	room_number:
		type: Number
		optional: true

	meal_plan:
		type: Boolean
		optional: true

	fulfilled:
		type: Boolean
		autoValue: -> false

	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

Applications.attachSchema(Schemas.Applications)

Applications.helpers
	building: ->
		building = buildings.find().fetch()
	room: ->
		room = rooms.find().fetch()
