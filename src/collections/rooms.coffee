@Rooms = new Meteor.Collection('rooms');

Schemas.Rooms = new SimpleSchema
	building_name:
		type:String
		max: 20

	number:
		type: Number

	type:
		type: String
		autoform:
			rows: 1

	capacity:
		type: Number

	meal_plan:
		type: Boolean

	description:
		type: String

	amenities:
		type: String
		autoform:
			 rows: 5

	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	owner:
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

Rooms.attachSchema(Schemas.Rooms)

Rooms.helpers
	author: ->
		user = Meteor.users.findOne(@owner)
		if user?.profile?.firstName? and user?.profile?.lastName
			user.profile.firstName + ' ' + user.profile.lastName
		else
			user?.emails?[0].address
