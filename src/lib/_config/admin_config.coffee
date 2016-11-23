@AdminConfig =
	name: Config.name
	userSchema: null
	collections:
		FormParameters:
			color: 'pink'
			icon: 'gear'
			tableColumns: [
				{ label: 'Amenities', name: 'amenities'}
				{ label: 'Room Capacities', name: 'room_capacities'}
				{ label: 'Room Types', name:'room_types'}
			]

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
			tableColumns: [
				{ label: 'Room Number', name: 'room_number'}
				{ label: 'Building', name: 'building_name'}
				{ label: 'Type', name: 'type'}
				{ label: 'Occupants', name: 'occupants'}
				{ label: 'Capacity', name: 'capacity'}
				{ label: 'Description', name: 'description'}
				{ label: 'Amenities', name: 'amenities'}
			]

		Application:
			color: 'purple'
			icon: 'file-text-o'
			tableColumns: [
				{ label: 'Applicant', name: 'applicant'}
				{ label: 'Room Number', name: 'room_number'}
				{ label: 'Building', name: 'building_name'}
				{ label: 'Room Type', name: 'room_Type'}
				]

		Tickets:
			color: 'red'
			icon: 'comments'
			tableColumns: [
				{label: 'Ticket Sender', name: 'senderID'}
				{label: 'Title', name: 'title'}
				{label: 'Body', name: 'content'}
				{label: 'Urgency', name: 'urgencyRating'}
			]

		Announcements:
			color: 'orange'
			icon: 'exclamation'
			tableColumns: [
				{label: 'Announcement Title', name: 'title'}
				{label: 'Announcement Content', name: 'Content'}
			]

	dashboard:
		homeUrl: '/dashboard'
		
	autoForm:
		omitFields: ['createdAt', 'updatedAt']
