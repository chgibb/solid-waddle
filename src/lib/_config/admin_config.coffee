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
				{ label: 'Room Types', name:'room_types.type'}
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
	dashboard:
		homeUrl: '/dashboard'
		# widgets:[
		# 	 {
        #     template: 'adminCollectionWidget'
        #     data:
        #       collection: 'Buildings'
        #       class: 'col-lg-3 col-xs-6'
		#   	 }
		# 	 {
        #     template: 'adminCollectionWidget'
        #     data:
        #       collection: 'Rooms'
        #       class: 'col-lg-3 col-xs-6'
		#   	 }
		# 	 {
        #     template: 'adminCollectionWidget'
        #     data:
        #       collection: 'Tickets'
        #       class: 'col-lg-3 col-xs-6'
		#   	 }
		# 	 {
        #     template: 'adminCollectionWidget'
        #     data:
        #       collection: 'Users'
        #       class: 'col-lg-3 col-xs-6'
		#   	 }
		# 	 {
        #     template: 'adminCollectionWidget'
        #     data:
        #       collection: 'Application'
        #       class: 'col-lg-3 col-xs-6'
		#   	 }
		# 	{
		# 	 template: 'adminMatchesPending'
		# 	 data:
		# 		 collection:'Users'
		# 		 class: 'col-lg-3 col-xs-6'
		# 	 }
		# ]
	autoForm:
		omitFields: ['createdAt', 'updatedAt']
