import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';

import './main.html';

Template.hello.onCreated(function helloOnCreated() {
  // counter starts at 0
  this.counter = new ReactiveVar(0);
});

Template.hello.helpers({
  counter() {
    return Template.instance().counter.get();
  },
});

Template.hello.events({
  'click button'(event, instance) {
    // increment the counter when button is clicked
    instance.counter.set(instance.counter.get() + 1);
  },
});

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
