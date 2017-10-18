module ClioClient
  module Api
    class Base
      attr_accessor :session

      def initialize(session)
        self.session = session
      end

      private

      def data_item(params)
        data_klass(params).new(params, session)
      end

      def plural_resource;   'data';   end
      def singular_resource; 'data';  end
    end
  end
end
