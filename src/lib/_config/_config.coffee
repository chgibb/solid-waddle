# These values get propagated through the app
# E.g. The 'name' and 'subtitle' are used in seo.coffee

@Config =

	# Basic Details
	name: 'LURMS+'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			TAPi18n.__ 'configSubtitle'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()

	# Emails
	emails:
		from: 'no-reply@' + Meteor.absoluteUrl()
		contact: 'hello' + Meteor.absoluteUrl()

	# Username - if true, users are forced to set a username
	username: false

	# Localisation
	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	# Meta / Extenrnal content
	privacyUrl: 'a'
	termsUrl: 'a'

	# For email footers
	legal:
		address: ''
		name: ''
		url: ''

	about: ''
	blog: ''

	socialMedia:
		facebook:
			url: ''
			icon: 'facebook'
		twitter:
			url: ''
			icon: 'twitter'
		github:
			url: 'http://github.com/chgibb/solid-waddle'
			icon: 'github'
		info:
			url: ''
			icon: 'link'

	#Routes
	homeRoute: '/'
	publicRoutes: ['home']
	dashboardRoute: '/dashboard'
