@Buildings = new Meteor.Collection('buildings');

Schemas.Buildings = new SimpleSchema
	name:
		type:String
		max: 20

	address:
		type: String
		autoform:
			rows: 2

	number_of_rooms:
		type: Number

	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

Buildings.attachSchema(Schemas.Buildings)

Buildings.helpers
	author: ->
		user = Meteor.users.findOne(@owner)
		if user?.profile?.firstName? and user?.profile?.lastName
			user.profile.firstName + ' ' + user.profile.lastName
		else
			user?.emails?[0].address
