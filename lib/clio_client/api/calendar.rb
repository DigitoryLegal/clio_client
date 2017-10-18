module ClioClient
  module Api
    class Calendar < Base

      include ClioClient::Api::Listable
      include ClioClient::Api::Findable

      private
      def data_klass(*args)
        ClioClient::Calendar
      end

      def end_point_url;     'calendars';  end

    end
  end
end
