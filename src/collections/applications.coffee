@Application = new Meteor.Collection('application');

Schemas.Application = new SimpleSchema
	applicant:
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoform:
			type: "hidden"
		autoValue: ->
			if this.isInsert
				Meteor.userId()


	building_name:
		type: String
		label: "Building Name"
		optional: true
		autoform:
			options: ->
				_.map Buildings.find({}).fetch(), (building)->
					label: building.name
					value: building.name

	room_number:
		type: String
		optional: true
		autoform:
			options: ->
				_.map Rooms.find({}).fetch(), (room)->
					label: room.room_number
					value: room._id

	matched:
		type: Boolean
		optional: true
		defaultValue: false

	room_Type:
		type: String
		autoform:
			type: 'imageGallery'
			options: ->
  		  	[
  		      {_id: "1", url: "/img/basic.jpg"},
  		      {_id: "2", url: "/img/single.jpg"},
			      {_id: "3", url: "/img/townhouse2.jpg"},
            {_id: "4", url: "/img/apt.jpg"}
  		    ];

	meal_plan:
		type: Boolean
		optional: true
		defaultValue: false

	createdAt:
		type: Date
		optional: true
		autoValue: ->
			if this.isInsert
				new Date()

Application.attachSchema(Schemas.Application)
