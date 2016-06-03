class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name.capitalize
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time <= 12
      return meal_time.to_s + ":00 AM"
    end
    if meal_time > 12
      time = meal_time - 12
      return time.to_s + ":00 PM"    
    end
  end

  def meow
    "I am #{name} and I like to eat #{preferred_food} at #{eats_at}"
  end
end

portia = Cat.new('portia', 'chicken', 8)

tabby = Cat.new('tabby', 'tuna', 18)


puts portia.meow
puts tabby.meow
