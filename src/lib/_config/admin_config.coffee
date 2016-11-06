@AdminConfig =
	name: Config.name
	collections:
		Posts:
			color: 'red'
			icon: 'pencil'
			extraFields: ['owner']
			tableColumns: [
				{ label: 'Title', name: 'title' }
				{ label: 'User', name: 'author()', template: 'adminUserCell' }
			]
		Buildings:
			color: 'yellow'
			icon: 'pencil'
			extraFields: ['owner']
			tableColumns: [
				{ label: 'Name', name: 'name' }
				{ label: 'Address', name: 'address'}
				{ label: 'Number of Rooms', name:'number_of_rooms' }
				{ label: 'Room types available', name:'room_types' }
			]

		Rooms:
			color: 'red'
			icon: 'pencil'
			extraFields: ['buildings']
			routes:
		        new:
		        	waitOn: -> Meteor.subscribe('buildings')
				view:
	         		waitOn: -> Meteor.subscribe('buildings')
		        edit:
		        	waitOn: -> Meteor.subscribe('buildings')
			tableColumns: [
				{ label: 'Building Name', name: 'building()'}
				{ label: 'Number', name: 'room_number' }
				{ label: 'Type', name: 'type' }
				{ label: 'Capacity', name: 'capacity' }
				{ label: 'Meal Plan', name: 'meal_plan' }
				{ label: 'Description', name: 'description' }
				{ label: 'Amenities', name: 'amenities' }
			]

		Comments:
			color: 'green'
			icon: 'comments'
			extraFields: ['doc', 'owner']
			tableColumns: [
				{ label: 'Content', name: 'content' }
				{ label: 'Post', name: 'docTitle()', template: 'adminPostCell' }
				{ label: 'User', name: 'author()', template: 'adminUserCell' }
			]
			children: [
				{
					find: (comment) ->
						Posts.find comment.doc, limit: 1
				}
				{
					find: (comment) ->
						Meteor.users.find comment.owner, limit: 1
				}
			]
		Tickets:
			color: 'blue'
			icon: 'comments'
	dashboard:
		homeUrl: '/dashboard'
	autoForm:
		omitFields: ['createdAt', 'updatedAt']
