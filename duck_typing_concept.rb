# Duck Typing
# Duck typing is when method behaves differently when dirrent object is passed to it
# i.e it gives different result based on object passed to it


class Planet
	def show_rotation_speed(planet)
		planet.rotation_speed
	end
end

class Earth
	def rotation_speed
		"1,000 miles per hour"
	end
end

class Jupiter
	def rotation_speed
		"28,000 miles per hour"
	end
end

planet1 = Planet.new
puts planet1.show_rotation_speed(Earth.new)

planet2 = Planet.new
puts planet2.show_rotation_speed(Jupiter.new)