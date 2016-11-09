@Application = new Meteor.Collection('application');

Schemas.Application = new SimpleSchema

	room_type:
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
		defaultValue: -1

	meal_plan:
		type: Boolean
		optional: true
		defaultValue: false

	matched:
		type: Boolean
		optional: true
		defaultValue: false

	image:
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

	createdAt:
		type: Date
		optional: true
		autoValue: ->
			if this.isInsert
				new Date()

Application.attachSchema(Schemas.Application)
