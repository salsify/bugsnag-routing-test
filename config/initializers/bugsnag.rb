Bugsnag.configure do |config|
  config.api_key = ENV.fetch('BUGSNAG_API_KEY')
  config.notify_release_stages = [ 'production', 'development' ]
end

Bugsnag.before_notify_callbacks << lambda { |notification|
  notification.context = 'routing test'
}
