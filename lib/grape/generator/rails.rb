module Grape
  module Generator
    module Rails
      # Your code goes here...
      class Config
        attr_accessor :format, :version
      end

      def self.config
        @config ||= Config.new
      end

      def self.configure
        yield(config)
      end
    end
  end
end
