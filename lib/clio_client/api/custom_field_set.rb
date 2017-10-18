module ClioClient
  module Api
    class CustomFieldSet < Base

      include ClioClient::Api::Listable
      include ClioClient::Api::Findable

      private
      def data_klass(*args)
        ClioClient::CustomFieldSet
      end

      def end_point_url;     'custom_field_sets';  end

    end
  end
end
