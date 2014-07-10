export default Ember.Route.extend({
  serialize: function (model) {
    return {
      user_id: ( model.get('username') ? model.get('username') : model.get('id') )
    }
  }
});

