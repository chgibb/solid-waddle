Schemas.UserProfile = new SimpleSchema(

  picture:
    type: String
    optional:true
    label: 'Profile picture'
    autoform:
      afFieldInput:
        type: 'fileUpload'
        collection: 'ProfilePictures'

  firstName:
    type: String
    optional: false

  lastName:
    type: String
    optional: false

  sex:
    type: String
    optional: false
    autoform:
        options: -> [
            {label: "M", value: "M"},
            {label: "F", value: "F"}
        ]

  yearLevel:
    type: Number
    optional: false
    autoform:
        options: -> [
            {label: "First", value: 1},
            {label: "Second", value: 2},
            {label: "Third", value: 3},
            {label: "Fourth", value: 4}
        ]
<<<<<<< HEAD

=======
>>>>>>> master

  program:
    type: String
    optional: false

  warnings:
    type: String
    optional: true
    autoform:
      type: "hidden"
      label: false

  mealPlan:
    type: Boolean
    optional: false
)

Schemas.User = new SimpleSchema(

  username:
    type: String
    regEx: /^[a-z0-9A-Z_]{3,15}$/
    optional: true


  emails:
    type: [Object]
    optional: true

  "emails.$.address":
    type: String
    regEx: /.*@lakeheadu.ca$/


  "emails.$.verified":
    type: Boolean

  createdAt:
    type: Date

  profile:
    type: Schemas.UserProfile
    optional: true

  services:
    type: Object
    optional: true
    blackbox: true

  roles:
    type: [String]
    blackbox: true
    optional: true
)

Meteor.users.attachSchema Schemas.User

# Export schemas
@StarterSchemas = Schemas

Meteor.users.helpers
  hasRole: (role) ->
    @roles?.indexOf(role) > -1
