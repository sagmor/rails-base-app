import GoogleAnalyticsManager from 'frontend/support/analytics/google_manager';

var AnalyticsManager = Ember.Object.create({
  initialize: function(application) {
    GoogleAnalyticsManager.initialize();

    application.Router.reopen({
      trackPageView: function() {
        AnalyticsManager.trackPageView(this.get('url'));
      }.on('didTransition')
    });
  },

  trackPageView: function (url) {
    GoogleAnalyticsManager.trackPageView(url);
  },

  trackAccount: function(account) {
    GoogleAnalyticsManager.trackAccount(account);
  }
});

export default AnalyticsManager;
