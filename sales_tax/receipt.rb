class Receipt

  def initialize
    @items = []
  end

  def add(item)
    if item.is_a?(Item)
      @items << item
    else
      raise "Sorry, you need to add an instance of Item class."
    end
  end

  # def line_item
  #   array.each do |item_price|
  #     puts "#{item} #{price}"
  #   end
  # end
end
