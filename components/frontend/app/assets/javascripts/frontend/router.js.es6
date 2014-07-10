import ENV from 'frontend/environment';

var Router = Ember.Router.extend({
  location: ENV.locationType
});

Router.map(function() {
  this.route('login');
  this.route('register');
  this.route('account');
  this.resource('user', {
    path: '/:user_id'
  })
});

export default Router;
