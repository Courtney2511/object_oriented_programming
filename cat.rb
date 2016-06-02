class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    meal_time
  end

  def meow
    puts "I am #{name} and I like to eat #{preferred_food} at #{meal_time}"
  end
end

portia = Cat.new('portia', 'chicken', 8)

tabby = Cat.new('tabby', 'tuna', 18)


tabby.meow
portia.meow
