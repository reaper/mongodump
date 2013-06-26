desc 'Mongodump main rake task'
task :mongodump do
  include Enumerable

  # Nil object to store object instance outside the conditional block
  db_object = nil 

  # Parse heroku config
  args = Mongodump::Heroku.parse_config

  if args.has_key?(:mongolab_uri)
    uri = args[:mongolab_uri]
    db_object = Mongodump::DB::Mongolab.new(uri)
  end

  if db_object.has_all_attributes?
    puts db_object.uri
    puts db_object.protocol
    puts db_object.username
    puts db_object.password
    puts db_object.hostname
    puts db_object.port
    puts db_object.appname
  end
end
