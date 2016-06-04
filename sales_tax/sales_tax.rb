require_relative 'item'
require_relative 'receipt'

#----- item instances

book = Item.new('book', 12.49, false, false)
music_cd = Item.new('music cd', 14.99, true, false)
chocolate_bar = Item.new('chocolate bar', 0.85, false, false)
imp_chocolates = Item.new('imported chocolates', 10.50, false , true)
imp_perfume = Item.new('imported perfume', 54.65, true, true)
perfume = Item.new('perfume', 20.89, true, false)
headace_pills = Item.new('headache_pills', 9.75, false, false)

receipt1 = Receipt.new

receipt1.add(book)
receipt1.add(music_cd)
receipt1.add(chocolate_bar)

receipt1.items.inspect
