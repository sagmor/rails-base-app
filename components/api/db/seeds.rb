host = "http#{'s' if Rails.application.secrets.ssl }://#{Rails.application.secrets.host}"

Doorkeeper::Application.create({
  name: "sample.dev",
  uid: Rails.application.secrets.oauth_client_id,
  secret: Rails.application.secrets.oauth_client_secret,
  flags: {
    official: true,
    password: true
  },
  hosts: [host],
  site_url: host,
  redirect_uri: host
})
