module ClioClient
  module Api
    class Task < Base

      include ClioClient::Api::Listable
      include ClioClient::Api::Findable
      include ClioClient::Api::Crudable


      private

      def data_klass(*args)
        ClioClient::Task
      end

      def end_point_url;     'tasks';  end

    end
  end
end
