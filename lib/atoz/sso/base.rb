module Atoz
  module Sso
    class Base
      attr_accessor :url, :params, :endpoint_path

      def initialize(**args)
        @params = args.except!(:url)
        @app_id = Atoz::Sso.configuration.app_id
        @app_secret = Atoz::Sso.configuration.app_secret
        @app_client_key = Atoz::Sso.configuration.app_client_key
      end

      def post_deliver
        @url              = ["http://", Atoz::Sso.configuration.end_point, self.endpoint_path].join
        uri               = URI.parse(@url)
        req               = Net::HTTP::Post.new(uri.path)
        req["AppId"]      = @app_id
        req["AppSecret"]  = @app_secret
        req["ClientKey"]  = @app_client_key
        req.body = @params.to_json
        con               = Net::HTTP.new(uri.host, uri.port)
        con.use_ssl       = false
        req["Content-Type"] = "application/json"
        response          = con.start {|http| http.request(req)}
        res_body = JSON.parse(response.body)
        data = res_body['meta']
        data.merge!(res_body['data'])
        data_response = Atoz::Sso::Response.new(data)
        return data_response
      end
    end
  end
end
