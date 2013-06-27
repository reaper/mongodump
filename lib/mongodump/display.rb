module Mongodump
  module Display
    def self.error(arg)
      puts "=> #{arg}".red
    end

    def self.info(arg)
      puts "=> #{arg}".cyan
    end

    def self.success(arg)
      puts "=> #{arg}".green
    end
  end
end
