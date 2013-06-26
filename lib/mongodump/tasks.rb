if defined?(Rails) && Rails.version >= '3'
  module Mongodump
    class Railtie < Rails::Railtie
      rake_tasks do
        Dir[File.join(File.dirname(__FILE__), 'tasks/**/*.rake')].each { |file| load file }
      end
    end
  end
else
  Dir[File.join(File.dirname(__FILE__), 'tasks/**/*.rake')].each { |file| load file }
end
