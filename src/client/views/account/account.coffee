AutoForm.hooks updatePassword:
	onSubmit: (insertDoc, updateDoc, currentDoc)->
		if insertDoc.new != insertDoc.confirm
			sAlert.error 'Passwords do not match'
			return false
		Accounts.changePassword insertDoc.old, insertDoc.new, (e)->
			$('.btn-primary').attr('disabled',null)
			if e
				sAlert.error e.message
			else
				sAlert.success 'Password Updated'

		false

Template.account.events
	'click .js-delete-account': ->
		Meteor.call 'deleteAccount', Meteor.userId()

Template.setUserName.helpers
	user: ->
		Meteor.user()


Template.paypalCreditCardForm.events 'submit #paypal-payment-form': (evt, tmp) ->
  evt.preventDefault()
  card_data = Template.paypalCreditCardForm.card_data()
  Meteor.Paypal.purchase card_data, {
    total: '100.50'
    currency: 'USD'
  }, (err, results) ->
    if err
      console.error err
    else
      console.log results
    return
  return