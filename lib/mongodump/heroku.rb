module Mongodump
  module Heroku
    @@heroku_config = "heroku config --shell"

    def self.parse_config
      config = `#{@@heroku_config}`

      hash = Hash.new
      for line in config.split("\n")
        line_array = line.split("=")
        hash[line_array.first.downcase.to_sym] = line_array.second
      end

      return hash
    end
  end
end
