# Documentation for class Registrant
class Registrant
  attr_reader :name, :age, :permit, :license_data

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @permit = info[:permit] || false
    @license_data = { written: false, license: false, renewed: false }
    return if info[:license_data].nil?

    info[:license_data].each_pair { |key, value| @license_data[key] = value }
  end

  def earn_permit
    @permit = true
  end
end