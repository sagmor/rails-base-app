import ENV from 'frontend/environment';

export default DS.ActiveModelAdapter.extend({
  host: ENV.apiRoot,
  headers: {
    'Accept': 'application/json'
  }
})
