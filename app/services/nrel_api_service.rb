class NrelApiService
  class << self
    def nearest(path)
      response = connection.get(path)
      parse(response)
    end

    private 

    def connection
      Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1/')
    end

    def parse(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end