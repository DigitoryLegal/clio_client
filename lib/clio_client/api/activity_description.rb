module ClioClient
  module Api
    class ActivityDescription < Base

      include ClioClient::Api::Listable

      private
      def data_klass(*args)
        ClioClient::ActivityDescription
      end

      def end_point_url; 'activity_descriptions'; end

    end
  end
end
