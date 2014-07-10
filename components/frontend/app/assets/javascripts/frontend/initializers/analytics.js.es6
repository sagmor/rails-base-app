import AnalyticsManager from 'frontend/support/analytics/manager';

export default {
  name: "analytics",
  initialize: function (container, application) {
    AnalyticsManager.initialize(application)
  }
};
