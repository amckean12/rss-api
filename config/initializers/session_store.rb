if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_rss-api', domain: 'placeholderdomain.com'
  else
    Rails.application.config.session_store :cookie_store, key: '_rss-api' 
end