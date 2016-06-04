class Item

  attr_accessor :name, :price, :sales_tax, :import_tax

  def initialize(name, price, sales_tax, import_tax)
    @name = name
    @price = price
    @sales_tax = sales_tax
    @import_tax = import_tax
  end

  def tax   #not returning taxes properly
    sales = 0.10
    import = 0.05

    if @sales_tax == true && @import_tax == true
      return @price + (@price * (sales + import))
    end

    if (@sales_tax == true) && (@import_tax == false)
      return @price + (@price * sales)
    end

    if (@sales_tax == false) && (@import_tax == true)
      return @price + (@price * import)
    end

    if (@sales_tax == false) && (@import_tax == false)
      return @price
    end
  end
end
