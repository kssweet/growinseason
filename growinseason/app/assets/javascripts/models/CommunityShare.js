var CommunityShareapp = CommunityShareapp || { Models: {}, Collections: {}, Views: {} };

CommunityShareapp.Models.CommunityShare = Backbone.Model.extend({
  initialize: function(){
    console.log("created csa");
  },
  defaults:{
    name:''
  }
});
