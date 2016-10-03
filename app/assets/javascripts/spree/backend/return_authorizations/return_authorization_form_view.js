var rmaView = Backbone.View.extend({
  el: '#new_authorized_return',
  template: HandlebarsTemplates['form'],
  render: function() {
    this.$el.html(this.template())
    return this
  }
});
