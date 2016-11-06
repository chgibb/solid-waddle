Template.dashboard.helpers({
  sessionOpen: function(page){
    return Session.get('profileView') === page;
  }
});

Template.dashboard.rendered = function() {
    //if meteor has room
    Session.set('profileView', 'roomProfile');
    //if meteor does not have roomProfile
    //Session.set('profileView', 'application');
}
