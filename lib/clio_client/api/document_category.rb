module ClioClient
  module Api
    class DocumentCategory < Base

      include ClioClient::Api::Listable
      include ClioClient::Api::Findable

      private
      def data_klass(*args)
        ClioClient::DocumentCategory
      end

      def end_point_url;     'document_categories';  end

    end
  end
end
