export default Ember.View.extend({
  tagName: 'nav',
  elementId: 'account-navigation',
  templateName: 'application/header/session/show',
  classNameBindings: ['expanded'],
  expanded: false,
  click: function () {
    this.toggleProperty('expanded');
  }
});



