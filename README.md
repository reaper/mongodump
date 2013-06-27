# Mongodump

Mongodump use heroku toolbelt and mongo binaries to fetch mongo databases from heroku databases platforms and restore them in your local database.

## Installation

Mongodump works with Rails 3.2. Add this line to your application's Gemfile:

    gem 'mongodump'

And then execute:

    $ bundle install

## Usage

    $ rake mongodump
    
## Limitations

For the moment, mongodump only simply works with MongoLab databases.
Development is in progress to make it compatible with MongoHQ.

## TODO

    - Environment variables
    - Handle exceptions
    - MongoHQ compatibility
    - On the go ideas

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
