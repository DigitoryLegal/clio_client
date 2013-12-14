module ClioClient
  module Api

    module Listable
      def list(params = {})
        response = session.get(end_point_url, params)
        @pagination_details = {last_query: params, records: 0, next_offset: response["next_offset"], 
          total_records: response["total_records"]
        }
        @pagination_details[:records] += response["records"]
        response[plural_resource].collect{ |r| data_item(r) }
      end
      
      def next_page
        if more_pages?
          params = @pagination_details[:last_query].merge(:offset => @pagination_details[:next_offset])
          response = session.get(end_point_url, params)
          @pagination_details[:next_offset] = response["next_offset"]
          @pagination_details[:records] += response["records"]
          response[plural_resource].collect{ |r| data_item(r) }
        else
          @pagination_details = nil
          []
        end
      end

      private
      def more_pages?
        if @pagination_details         
          @pagination_details[:records] < @pagination_details[:total_records]
        end
      end


    end

  end
end
