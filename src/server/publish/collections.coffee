# You'll want to replace these functions. They publish the whole
# collection which is problematic after your app grows

Meteor.publish 'posts', ->
	Posts.find()

Meteor.publish 'attachments', ->
	Attachments.find()

Meteor.publish 'buildings', ->
	Buildings.find()

Meteor.publish 'rooms', ->
	Rooms.find()

Meteor.publish 'application', ->
	Application.find()

Meteor.publish 'formParameters', ->
	FormParameters.find()
<<<<<<< HEAD
=======

Meteor.publish 'appliedapplication', ->
	Application.findOne({applicant: Meteor.userId()})

Meteor.publish 'matchedapplication', ->
	Application.findOne()
>>>>>>> master
