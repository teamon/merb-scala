# Go to http://wiki.merbivore.com/pages/init-rb

# Specify your dependencies in the Gemfile

use_test :rspec
use_template_engine :erb
 
Merb::Config.use do |c|
  c[:use_mutex] = false
  c[:session_store] = 'cookie'  # can also be 'memory', 'memcache', 'container', 'datamapper
  
  # cookie session store configuration
  c[:session_secret_key]  = 'a6827810183e52bd46586a2a27e987439801dcc3'  # required for cookie session store
  c[:session_id_key] = '_merb-scala_session_id' # cookie session id key, defaults to "_session_id"
end
 
Merb::BootLoader.before_app_loads do
  # This will get executed after dependencies have been loaded but before your app's classes have loaded.
  module ScalaModels
    include_package "app.models"
  end
end
 
Merb::BootLoader.after_app_loads do
  # This will get executed after your app's classes have been loaded.
end
