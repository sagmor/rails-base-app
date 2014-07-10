import configuration from 'simple-auth/configuration';
import setup from 'simple-auth/setup';
import Session from 'simple-auth/session'
import ENV from 'frontend/environment';

export default {
  name: "simple-auth",
  initialize: function (container, application) {
    configuration.authorizer = 'authorizer:application';
    configuration.crossOriginWhitelist = [ ENV.apiRoot ];

    Session.reopen({
      account: function() {
        if (this.get('isAuthenticated')) {
          return  this.get('container')
                      .lookup('store:main')
                      .find('account', '');
        }
      }.property('isAuthenticated')
    });

    setup(container, application);
  }
};
