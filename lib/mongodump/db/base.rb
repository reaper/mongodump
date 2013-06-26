module Mongodump
  module DB
    class Base
      attr_accessor :uri
      attr_accessor :protocol
      attr_accessor :username
      attr_accessor :password
      attr_accessor :hostname
      attr_accessor :port
      attr_accessor :appname

      def initialize(arg)
        if arg.is_a?(String)
          @uri = arg
          parse
        else
          raise IncompatibleArgumentException
        end
      end

      def has_all_attributes?
        for variable in [@uri, @protocol, @username, @password, @hostname, @port, @appname]
          if variable.blank?
            return false
          end
        end
      end
    end
  end
end
