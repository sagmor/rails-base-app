import ENV from 'frontend/environment';
import OAuth2Authenticator from "simple-auth-oauth2/authenticators/oauth2"

export default OAuth2Authenticator.extend({
  serverTokenEndpoint: ENV.apiRoot+ "/oauth/token",
  makeRequest: function(data) {
    data.client_id = ENV.oauthClientID;
    data.client_secret = ENV.oauthClientSecret;
    data.scope = "full";

    return this._super(data);
  }
})
