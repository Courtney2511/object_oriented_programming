class Item

  attr_reader :name, :price, :is_taxable, :is_imported

  def initialize(name, price, is_taxable, is_imported)
    @name = name
    @price = price
    @is_taxable = is_taxable
    @is_imported = is_imported
  end

  def tax
    sales = 10
    import = 5
    total_tax = 0

    if is_taxable
      total_tax = total_tax + (sales * price)
    end

    if is_imported
      total_tax = total_tax + (import * price)
    end

    remainder = total_tax % 5

    if remainder > 0
      total_tax = total_tax + (5 - remainder)
    end

    total_tax/100.0
  end
end

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

  def print_receipt
    total_tax = 0
    subtotal = 0
    @items.each do |item|
      puts "#{item.name.capitalize}: $#{"%.2f" % (item.tax + item.price)}"

      total_tax = item.tax + total_tax
      subtotal = item.price + subtotal
    end
    puts "#{"%s %.2f" % ["Sales Tax: $", total_tax] }"
    puts "#{"%s %.2f" % ["Total: $", (total_tax + subtotal)] }"

  end
end


#--- First receipt ----#
book = Item.new('book', 12.49, false, false)
music_cd = Item.new('music cd', 14.99, true, false)
chocolate_bar = Item.new('chocolate bar', 0.85, false, false)

receipt1 = Receipt.new

receipt1.add(book)
receipt1.add(music_cd)
receipt1.add(chocolate_bar)

receipt1.print_receipt

puts
puts

#--- Second Receipt ---#
imp_chocolates = Item.new('imported chocolates', 10, false , true)
imp_perfume = Item.new('imported perfume', 47.50, true, true)

receipt2 = Receipt.new

receipt2.add(imp_chocolates)
receipt2.add (imp_perfume)

receipt2.print_receipt

puts
puts

#--- Third Receipt ---#
imp_chocolates = Item.new('imported chocolates', 11.25, false , true)
imp_perfume = Item.new('imported perfume', 27.99 , true, true)
perfume = Item.new('perfume', 18.99, true, false)
headache_pills = Item.new('headache pills', 9.75, false, false)

receipt3 = Receipt.new

receipt3.add(imp_perfume)
receipt3.add(perfume)
receipt3.add(headache_pills)
receipt3.add(imp_chocolates)

receipt3.print_receipt
