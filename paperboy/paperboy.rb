class Paperboy

  attr_reader :earnings #must be read only.  How do you update earnings then?

  attr_accessor :name, :quota, :experience, :side, :earnings

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    50 + experience/2
  end

  def deliver(start_address, end_address) # ----- number of houses !!!! adjust for even or odd side

      houses = end_address - start_address
      over_quota = houses - quota
      @experience = @experience + houses

        if houses < quota
          @earnings = @earnings - 2.00
        else
          total = 0.25 * quota  + 0.50 * over_quota
          puts total
          @earnings = @earnings + total
        end
  end

  def report
    "I'm #{name.capitalize}. I've delivered #{experience} papers and I've earned $#{earnings} so far!!"

  end

end
