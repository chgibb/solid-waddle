@FormParameters = new Meteor.Collection('formParameters');

Schemas.FormParameters = new SimpleSchema
	amenities:
		type:[String]
		optional: true

	room_capacities:
		type:[Number]
		optional: true

	room_types:
		type: [String]
		optional: true

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
	roomInfo: ->
		cursor = FormParameters.find({_id: this._id});
		console.log(@cursor.next());
