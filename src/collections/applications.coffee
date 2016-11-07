@Applications = new Meteor.Collection('applications');

Schemas.Application = new SimpleSchema
	request_by:
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

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
