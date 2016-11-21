Meteor.startup ->
  if Meteor.isClient
    sAlert.config
      effect: "stackslide"
      position: "top"
      timeout: 3000
      html: false
