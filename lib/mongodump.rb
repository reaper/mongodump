require 'mongodump/heroku'
require 'mongodump/db/base'
require 'mongodump/db/mongolab'
require 'debugger'
require 'rake'

if defined?(Rails)
  # Require rake tasks
  require "mongodump/tasks"
end

module Mongodump
end
