module Pizza
  class Pie
  	attr_accessor :toppings
  	def initialize(toppings= [Topping.new('cheese', vegetarian: true)])
  		@toppings = toppings
  	end

    def vegetarian?
      if @toppings.any? {|topping| topping.vegetarian == true}
         return true
      else
         return false
      end
    end

  end

  class Topping
  	attr_accessor :name, :vegetarian
  	def initialize(name, vegetarian: false)
  		@name = name
  		@vegetarian = vegetarian
  	end
  end
end