class Paperboy

  attr_reader :earnings

  attr_accessor :name, :quota, :experience, :side, :earnings

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota #half experience + 50 (the minimum)

  end

  def deliver(start_address, end_address) #takes 2 house numbers and return the
                                        #money earned. $0.25 per paper, and 0.50 each after quota
                                        #-2.00 if quota isnt method
                                        #should also update experience
  end

  def report

  end

end
