var CommunityShareapp = CommunityShareapp || { Models: {}, Collections: {}, Views: {} };

CommunityShareapp.Views.CommunityShareView = Backbone.View.extend({

  initialize: function(){
    this.listenTo( this.model, "change", this.render )
    this.listenTo( this.model, "destroy", this.remove );
  },

  tagName: 'li',
  template: _.template( $('#csa_template').html() ),
  editTemplate: _.template( $('#csa_edit_template').html() ),

  events: {
    'click [data-action="destroy"]' : 'destroyCommunityShare',
    'click [data-action="edit"]' : 'renderEditForm'
  },

  render: function(){
    this.$el.empty();
    this.$el.html(this.template( this.model.attributes ));

    return this;
  },

  destroyCommunityShare: function(e){
    e.preventDefault();
    this.model.destroy();

    return this;
  },

  renderEditForm: function(){
    var that = this;
    this.$el.html(this.editTemplate( this.model.attributes ));

    this.$el.find('form').on("submit"), function(e){
        e.preventDefault();
        var nameField = that.$el.find('input');
        var newName = nameField.val();
        nameField.val
        that.model.set('name', newName);
        that.model.save();
      })

      this.$el.find('button').on('click', function(e){
        e.preventDefault;
        self.render();
      })
  }
});




