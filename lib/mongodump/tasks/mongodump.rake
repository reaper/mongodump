desc 'Mongodump main rake task'
task :mongodump do
  cmd = "heroku config"
  values = `#{cmd}`
  puts values
end
