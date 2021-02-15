# Modules are collection of methods, constants and variable which can be shared in multiple calsses
# We cannot instanciate module.

# Use module as namespace

module Cold
  class Planet
    def name
      'Pluto, Uranus'
    end
  end
end

module Hot
  class Planet
    def name
      'Mercury, venus'
    end
  end
end

puts ::Cold::Planet.new.name

puts ::Hot::Planet.new.name

# mixins
# modules are substitue for multiple inheritance in ruby
# we include a module in a class to make instance methods

module Meteor

  def description
    'Meteors are no more than dust and ice from the trail of comets'
  end
end

class Planet
  include Meteor
end

puts Planet.new.description


# we extend a module in a class to make class methods

module Meteor

  def description
    'Meteors are no more than dust and ice from the trail of comets'
  end
end

class Planet
  extend Meteor
end

puts Planet.description

# we prepend a module when we want to add module first in the ancestors chain

module Meteor

  def description
    'Meteors are no more than dust and ice from the trail of comets'
  end
end

class Planet
  prepend Meteor

  def description
    'A planet is an astronomical body orbiting a star or stellar remnant that is massive enough to be rounded by its own gravity'
  end
end

puts Planet.description

