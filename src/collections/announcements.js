Announcements = new Mongo.Collection('announcements');

Announcements.allow({
    insert: function(userId, doc){
        return !!userId;
    },
    update: function(userId, doc){
        return !!userId;
    },
    remove: function(userId, doc){
        return !!userId;
    }
});

AnnouncementsSchema = new SimpleSchema({
  roomID: {
    type: String,
    label: "Room ID"
  },
  createdBy:{
    type: String,
    autoValue: function() {return this.userId;}
  },
  title:{
    type: String,
    label: "Announcement Title"
  },
  content: {
    type: String,
    label: "Announcement Body"
  }
});

Announcements.attachSchema(AnnouncementsSchema);
