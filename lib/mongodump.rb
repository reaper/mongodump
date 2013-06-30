require 'mongodump/heroku'
require 'mongodump/dump'
require 'mongodump/restore'
require 'mongodump/db/base'
require 'mongodump/db/mongolab'
require 'mongodump/display'

require 'rake'
require 'colorize'

if defined?(Rails)
  # Require rake tasks
  require "mongodump/tasks"
end

module Mongodump
end
