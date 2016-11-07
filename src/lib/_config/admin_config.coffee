@AdminConfig =
	name: Config.name
	collections:
		Buildings:
			color: 'yellow'
			icon: 'building'
			tableColumns: [
				{ label: 'Name', name: 'name'}
				{ label: 'Address', name: 'address'}
				{ label: 'Number of Rooms', name:'number_of_rooms'}
			]

		Rooms:
			color: 'green'
			icon: 'bed'
			routes:
		        new:
		        	waitOn: -> Meteor.subscribe('buildings');
				view:
	         		waitOn: -> Meteor.subscribe('buildings');
		        edit:
		        	waitOn: -> Meteor.subscribe('buildings');
			tableColumns: [
				{ label: 'Room Number', name: 'room_number'}
				{ label: 'Building', name: 'building_name'}
				{ label: 'Type', name: 'type'}
				{ label: 'Capacity', name: 'capacity'}
				{ label: 'Description', name: 'description'}
				{ label: 'Amenities', name: 'amenities'}
			]

		Applications:
			color: 'purple'
			icon: 'file-text'
			routes:
		        new:
		        	waitOn: -> Meteor.subscribe('buildings');
				view:
	         		waitOn: -> Meteor.subscribe('buildings');
		        edit:
		        	waitOn: -> Meteor.subscribe('buildings');
			tableColumns: [
				{ label: 'Request By', name: 'request_by'}
				{ label: 'Building', name: 'building_name'}
				{ label: 'Room Number', name: 'room_number'}
				{ label: 'Meal plan', name: 'meal_plan'}
			]

		Tickets:
			color: 'red'
			icon: 'comments'
	dashboard:
		homeUrl: '/dashboard'
	autoForm:
		omitFields: ['createdAt', 'updatedAt']
