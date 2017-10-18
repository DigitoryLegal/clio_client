module ClioClient
  module Api
    class Group < Base

      include ClioClient::Api::Listable
      include ClioClient::Api::Findable
      include ClioClient::Api::Crudable


      private

      def data_klass(*args)
        ClioClient::Group
      end

      def end_point_url;     'groups';  end

    end
  end
end
