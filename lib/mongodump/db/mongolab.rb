module Mongodump
  module DB
    class Mongolab < Base
      def parse
        splitted_uri = @uri.scan(/^(.*):\/\/(.*?):(.*?)@(.*?):(\d*)\/(.*?)$/i).flatten

        if splitted_uri.size == 6
          @protocol = splitted_uri[0]
          @username = splitted_uri[1]
          @password = splitted_uri[2]
          @hostname = splitted_uri[3]
          @port = splitted_uri[4]
          @appname = splitted_uri[5]
        end
      end
    end
  end
end

