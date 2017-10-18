module ClioClient
  module Api
    class TimelineEvent < Base

      include ClioClient::Api::Listable
      include ClioClient::Api::Crudable

      def update
        raise NotImplementedError
      end

      def destroy
        raise NotImplementedError
      end

      private

      def data_klass(*args)
        ClioClient::TimelineEvent
      end

      def end_point_url;     'timeline_events';  end

    end
  end
end
