class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time <= 12
      return meal_time.to_s + " AM"
    end
    if meal_time > 12
      meal_time - 12   #need to convert this to string and concat " PM"
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
