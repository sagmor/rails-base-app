export default Ember.View.extend({
  navigating: false,
  debug: false,

  elementId: 'application',
  classNameBindings: ['navigating',"debug:gridle-debug"]
});

