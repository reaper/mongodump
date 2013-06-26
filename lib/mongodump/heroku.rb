module Mongodump
  module Heroku
    HEROKU_CONFIG_COMMAND = "heroku config --shell"

    def self.parse_config
      config = `#{HEROKU_CONFIG_COMMAND}`

      hash = Hash.new
      for line in config.split("\n")
        line_array = line.split("=")
        hash[line_array.first.downcase.to_sym] = line_array.second
      end

      return hash
    end
  end
end
