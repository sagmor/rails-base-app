export default Ember.Controller.extend({
  // TODO: check if needed
  // taken from: https://github.com/simplabs/ember-simple-auth/issues/37#issuecomment-29289002
  error: function(xhr, transition, route) {
    if (xhr) {
      var status = xhr.status;
      if (status == 401) {
        // Reset the session to avoid an infinite loop.
        this.session.destroy()
        if (Ember.canInvoke(transition, 'send')) {
          transition.send('login');
        } else {
          this.send('login');
        }
      }
      else {
        // Handle other errors
      }
    }
  }
});

