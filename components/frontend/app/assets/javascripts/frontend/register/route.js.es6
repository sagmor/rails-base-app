export default Ember.Route.extend({
  beforeModel: function() {
    if ( this.get('session.isAuthenticated') ) {
      this.transitionTo('index');
    }
  },
  model: function() {
    return this.store.createRecord('account');
  }
});

