var CommunityShareapp = CommunityShareapp || { Models: {}, Collections: {}, Views: {} };


CommunityShareapp.Views.CommunityShareListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },

  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(community_share){
      var communityshareView = new CommunityShareapp.Views.CommunityShareView({model: community_share})
      self.$el.append( communityshareView.render().el );
    })
  }
})
