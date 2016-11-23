Tickets = new Mongo.Collection('tickets');

Tickets.allow({
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

TicketsSchema = new SimpleSchema({
  roomID: {
    type: String,
    label: "Room ID",
    optional: true
  },
  senderID: {
    type: String,
    autoValue: function(){ //Assign the sender ID to the current logged in user.
      return this.userId
    }
  },
  recipientID: {
    type: String,
    label: "Recipient ID",
    optional: true
  },
  title: {
    type: String,
    label: "Ticket Title"
  },
  content: {
    type:String,
    label: "Message body",
    min: 1,
    autoform: {
      rows: 10
    }
  },
  urgencyRating:{
    type: Number,
    min: 1,
    max: 5
  },
  reply: {
    type: String,
    label: "Message reply",
    optional: true,
    autoform: {
      rows: 5
    }
  },
  resolved:{
    type: Boolean,
    optional: true,
    autoform: {
      type: "hidden",
      label: false
    }
  }
});

Tickets.attachSchema(TicketsSchema);
