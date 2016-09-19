import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';

import './main.html';

Template.register.events
(
	{
		'submit form' : function(event)
		{
			event.preventDefault();
			var email = $('[name=email]').val();
			var r = new RegExp("@lakeheadu.ca","g");
			if(!r.test(email))
			{
				alert("Not a valid Lakehead email address");
				return;
			}
			var password = $('[name=password]').val();
			Accounts.createUser
			(
				{
					email : email,
					password : password
				}
			);
			Meteor.users.find().fetch();
		}
	}
);
