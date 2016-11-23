// Template.application.helpers({
//   roomTypes: function(){
//     return [
//       {label: "Basic Single", value: 1},
//       {label: "Single", value: 2},
//       {label: "Apartment", value: 3},
//       {label: "Townhouse", value: 4}
//     ];
//   }
// });
// Template.application.helpers({
//    compareCollections: function(){
//      if(applicant.application==Meteor._id()){
//       return true;
//     }
//     else {
//       return false;
//     }
//    }
//  })
Template.application.helpers({
  hasApplied: function(){
    if(Application.findOne({applicant: Meteor.userId()})){
      return true;
    }
    else{
      return false;
    }
  } ,

  hasMatched: function(){
    console.log(Application.findOne({ $and: [{applicant: Meteor.userId()}, {matched: true}]}))
    if(Application.findOne({ $and: [{applicant: Meteor.userId()}, {matched: true}]}))
    {
      return true;
    }
    else{
      return false;
    }
  }
})
