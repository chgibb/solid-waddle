@RoomTypesInfo = new Meteor.Collection('roomTypes');

Schemas.RoomTypesInfo = new SimpleSchema
	type:
		type: String
		optional: true

	room_img:
      type: String
      optional:true
      label: 'Room picture'
      autoform:
        afFieldInput:
          type: 'fileUpload'
          collection: 'RoomPictures'

@FormParameters = new Meteor.Collection('formParameters');

Schemas.FormParameters = new SimpleSchema
	amenities:
		type:[String]
		optional: true

	room_capacities:
		type:[Number]
		optional: true

	room_types:
		type: [Schemas.RoomTypesInfo]
		optional: true
		# autoform:
		# 	options: ->
		# 		_.map RoomTypesInfo.find({}).fetch(), (room)->
		# 			label: room.type
		# 			value: room.type


	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	owner:
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			type: "hidden"

FormParameters.attachSchema(Schemas.FormParameters)

FormParameters.helpers
	roomInfo: ->  FormParameters.pick('room_types', 'room_types.$');
