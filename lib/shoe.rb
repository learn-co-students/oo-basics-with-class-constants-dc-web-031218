class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  def initialize(brand)
    @brand = brand
    unless BRANDS.include?(brand)
      BRANDS << brand
    end
  end
  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(new_brand)
    @brand = new_brand
    unless BRANDS.include?(new_brand)
      BRANDS << new_brand
    end
    p BRANDS  
  end
end

newShoe = Shoe.new("Nike")
newShoe.brand = ("Adidas")
anotherShoe = Shoe.new("Adidas")
anotherShoe.brand = ("Uggs")

      
      
