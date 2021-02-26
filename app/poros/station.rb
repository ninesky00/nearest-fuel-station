class Station
  attr_reader :name, :address, :fuel_type, :hours
  def initialize(data)
    @name = data[:station_name]
    @address = data[:street_address]
    @fuel_type = data[:fuel_type_code]
    @hours = data[:access_days_time_fr] || 'N/A'
  end
end