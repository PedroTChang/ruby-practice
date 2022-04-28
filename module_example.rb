class Car
  module VehicleActions
    def initialize
      @speed = 0
      @direction = "north"
    end

    def brake
      @speed = 0
    end

    def accelerate
      @speed += 10
    end

    def turn(new_direction)
      @direction = new_direction
    end
  end

  def honk_horn
    puts "Beeeeeeep!"
  endb
end

class Bike < Car
  include VehicleActions

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
bike.accelerate
p bike.brake
p bike
