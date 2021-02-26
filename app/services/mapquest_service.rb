class MapquestService
  class << self 
    def call_api(path, params = {})
      response = connection.get(path) do |request|
        request.params = params
        request.params[:key] = ENV['MAPQUEST_API_KEY']
      end
      parse(response)
    end

    private 

    def connection
      Faraday.new('https://www.mapquestapi.com/')
    end

    def parse(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end