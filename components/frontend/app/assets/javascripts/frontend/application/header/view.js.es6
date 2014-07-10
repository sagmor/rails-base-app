export default Ember.View.extend({
  templateName: 'application/header',
  tagName: 'header',
  elementId: 'header',
  actions: {
    toggleNavigation: function() {
      this.toggleProperty('parentView.navigating');
    }
  }
});


