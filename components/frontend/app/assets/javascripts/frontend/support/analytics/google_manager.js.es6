import ENV from 'frontend/environment';

var GoogleAnalyticsManager = Ember.Object.create({
  active: false,
  trackingCode: ENV.analytics.google,

  initialize: function() {
    if (this.get('trackingCode')) {
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      this.set('active', true);
      ga('create', this.get('trackingCode'), 'auto');
    }
  },

  track: function () {
    if (this.get('active')) {
      ga.apply(window,arguments);
    }
  },

  trackPageView: function (url) {
    this.track('send', 'pageview', {
      'page': url,
      'title': url
    });
  },

  trackAccount: function(account) {
    this.track("set", "&uid", account && account.id);
  }
});

export default GoogleAnalyticsManager
