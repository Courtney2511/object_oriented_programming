class Person

  attr_accessor :name

end


class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object."
  end

end
