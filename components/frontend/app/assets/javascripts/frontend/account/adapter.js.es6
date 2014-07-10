import ApplicationAdapter from 'frontend/application/adapter';

export default ApplicationAdapter.extend({
  pathForType: function(type) {
    return 'account';
  },
  buildURL: function(type,id) {
    return this._super(type, null);
  }
})
