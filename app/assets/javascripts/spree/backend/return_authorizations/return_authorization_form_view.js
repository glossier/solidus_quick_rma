var rmaView = Backbone.View.extend({
  el: '#new_authorized_return',
  template: HandlebarsTemplates['form'],

  initialize: function(options) {
    this.model = {
      reasons: this.$el.data('reasons')
    }
  },

  render: function() {
    this.$el.html(this.template(this.model))
    return this
  }
});
