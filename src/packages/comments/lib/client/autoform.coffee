AutoForm.hooks commentForm:
  onError: (operation, error, template) ->
  	sAlert.error error

  formToDoc: (doc, ss, formId) ->
  	doc.doc = Template.instance().data.commentDocId
  	doc.owner = Meteor.userId()
  	doc

<<<<<<< HEAD

=======
>>>>>>> master
AutoForm.hooks updateProfile:
    onError: (operation, error, template) ->
        sAlert.error error

    onSuccess: ->
        sAlert.success('Your profile was succesfully updated');


AutoForm.hooks insertApplication:
    onError: (operation, error, template) ->
        sAlert.error error

    onSuccess: ->
        sAlert.success('Your application was succesfully submitted');


AutoForm.hooks createTicket:
    onError: (operation, error, template) ->
        sAlert.error error

    onSuccess: ->
        sAlert.success('Your ticket was succesfully submitted');
