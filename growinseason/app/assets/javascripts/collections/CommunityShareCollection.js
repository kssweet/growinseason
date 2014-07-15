var CommunityShareapp = CommunityShareapp || { Models: {}, Collections: {}, Views: {} };

CommunityShareapp.Collections.CommunityShareCollection = Backbone.Collection.extend({
  model: CommunityShareapp.Models.CommunityShare,
  url: '/community_shares'
});
