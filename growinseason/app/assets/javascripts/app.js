var CommunityShareapp = CommunityShareapp || { Models: {}, Collections: {}, Views: {} };
var collection;

CommunityShareapp.initialize = function(){
  collection = new CommunityShareapp.Collections.CommunityShareCollection();

  var listView = new CommunityShareapp.Views.CommunityShareListView({
    collection: collection,
    el: $('.community_share_list')
  });

  collection.fetch();

  $('.community_share').find('form').on('submit', function(e){
    e.preventDefault();
    var communityshareName = $('input').val();
    $('input').val('')
    collection.create({name: communityshareName})
  })
}