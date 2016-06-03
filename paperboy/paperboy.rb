class Paperboy

  attr_reader :earnings

  attr_accessor :name, :quota, :experience, :side, :earnings

  def initialize(name, side)
    @name = name
    @side = side
    @quota = 50
    @experience = 0
    @earnings = 0
  end

  def deliver(start_address, end_address)

    if @side == 'even'
      start_address = start_address + 1 if (start_address % 2 == 1)
      end_address = end_address - 1 if (end_address % 2 == 1)
    else
      start_address = start_address + 1 if (start_address % 2 == 0)
      end_address = end_address - 1 if (end_address % 2 == 0)
    end

    houses = (end_address - start_address) / 2 + 1

    over_quota = houses - quota

    total = (0.25 * [quota, houses].min)  + (0.50 * [over_quota, 0].max)

    if houses < quota
      total = total - 2.0
    end

    @earnings = @earnings + total
    @experience = @experience + houses
    @quota = 50 + (@experience * 0.5).to_i
    total
  end

  def report
    "I'm #{name.capitalize}. I've delivered #{experience} papers and I've earned $#{earnings} so far!!"
  end

end

#------- Sample Code

puts tommy = Paperboy.new("Tommy", "even")

puts tommy.quota # => 50
puts tommy.deliver(100, 220) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.50 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 150) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
