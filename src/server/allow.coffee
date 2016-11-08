Tickets.allow
	insert: (userId, doc) ->
		userId == doc.owner
	update: (userId, doc, fields, modifier) ->
		userId == doc.owner
	remove: (userId, doc) ->
		userId == doc.owner



Meteor.users.allow
	update: (userId, doc, fieldNames, modifier) ->
		if userId == doc._id
			true
		else
			false
