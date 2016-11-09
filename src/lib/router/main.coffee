Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'buildings'
        subs.subscribe 'rooms'
        subs.subscribe 'application'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()
