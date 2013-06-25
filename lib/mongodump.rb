require 'heroku/command/config'
require "mongodump/version"

if defined?(Rails)
  # Require rake tasks
  require "mongodump/tasks"
end

module Mongodump
end
