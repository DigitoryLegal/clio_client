module ClioClient
  module Api
    class CalendarEntry < Base

      include ClioClient::Api::Crudable
      include ClioClient::Api::Listable
      include ClioClient::Api::Findable

      private
      def data_klass(*args)
        ClioClient::CalendarEntry
      end

      def end_point_url;     'calendar_entries'; end

    end
  end
end
