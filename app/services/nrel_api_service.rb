class NrelApiService
  class << self
    def nearest(path, params = {})
      response = connection.get(path) do |request|
        request.params = params
        request.params[:api_key] = ENV['NREL_API_KEY']
      end
      parse(response)
    end

    private 

    def connection
      Faraday.new('https://developer.nrel.gov')
    end

    def parse(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end