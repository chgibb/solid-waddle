Template.matchedapplication.helpers({
  building: function(){
    var bName = Application.findOne({applicant:Meteor.userId()}).building_name;
    return Buildings.findOne({name: bName});
  },

  room: function(){
    var id = Application.findOne({applicant:Meteor.userId()}).room_number;
    return Rooms.findOne({_id: id});
  },

  roomType: function(){

    var id = Application.findOne({applicant:Meteor.userId()}).room_number;
    var type = Rooms.findOne({_id: id}).type;
    console.log(type);
    if (type == 1){
      return "img/basic.jpg"
    }
    if (type == 2){
      return "img/single.jpg"
    }
    if (type == 3){
      return "img/apt.jpg"
    }
    if (type == 4){
      return "img/townhouse2-small.jpg"
    }
  }

});
