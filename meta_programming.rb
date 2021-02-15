# Meta Programming is writing code which in turns creates new code on runtime(create methods dynamically)
# Using send method

class Planet
  attr_accessor :name, :radius

  def assign_values(values)
    values.each do |k, v|
      send("#{k}=", v)
    end
  end
end

planet_info = { name: 'Earth', radius: '6,371 km' }

planet = Planet.new

planet.assign_values(planet_info)

pp planet

# Using define_method

class Planet
  attr_accessor :name, :radius

  def initialize(name, radius)
    @name = name
    @radius = radius
  end

  def self.create_method(name)
    define_method("#{name}_details") do
      "#{self.name} has a radius of #{self.radius}"
    end
  end
end

planet2 = Planet.new("earth", "6371 km")

Planet.create_method(planet2.name)
pp planet2.earth_details

