# Load the Rails application.
require_relative 'application'

Rails.application.configure do
  config.autoload_paths << "#{Rails.root}/engines/campusties_engine"
end

# Initialize the Rails application.
Rails.application.initialize!
