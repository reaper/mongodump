require 'mongodump'

desc 'Mongodump main rake task'
task :mongodump => :environment do
  include Enumerable

  # Nil object to store object instance outside the conditional block
  db_object = nil 

  # Parse heroku config
  args = Mongodump::Heroku.parse_config

  if args.has_key?(:mongolab_uri)
    uri = args[:mongolab_uri]
    db_object = Mongodump::DB::Mongolab.new(uri)
  end

  if db_object && db_object.has_all_attributes?
    path = Mongodump::Dump.process(db_object)
    Mongodump::Restore.process(path)
  end
end
