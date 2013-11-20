module Pizza
  class Pie


  end

  class Topping
  	attr_accessor :name

  	def initialize(name, vegetarian: true)
  		@name = name
  		
  	end
  	
  end
end