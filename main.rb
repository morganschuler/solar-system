require_relative "solar_system"
require_relative "planet"

def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is the only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4219e23, 2.3e9, 'is named after the Roman god of war')
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  
  list = solar_system.list_planets
  puts list

found_planet = solar_system.find_planet_by_name('Earth')
puts found_planet

  if found_planet != nil
    puts found_planet.summary
  end
end

main

