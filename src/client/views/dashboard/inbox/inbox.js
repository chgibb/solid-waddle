Template.inbox.helpers({
  announcement: function(){
    return Announcements.find();
  },
  replyObject: function(){
    return Tickets.find({$and: [{senderID: Meteor.userId()}, {reply: {$exists: true}}]});
  }
});
