@Buildings = new Meteor.Collection('buildings');

Schemas.Buildings = new SimpleSchema
	name:
		type:String
		max: 20

	address:
		type: String
		autoform:
			rows: 5

	number_of_rooms:
		type: Number

	room_types:
		type: String
		optional: true,
		autoform:
		  type: "select-checkbox-inline",
		  options: ->
		  	[
		      {label: "Basic Single", value: '1'},
		      {label: "Single", value: '2'},
			  {label: "Apartment", value: '3'},
		      {label: "Townhouse", value: '4'}
		    ];


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
