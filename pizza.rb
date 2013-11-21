module Pizza
  class Pie
  	attr_accessor :toppings, :delivery_time
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

    def add_toppings(topping)
      @toppings << topping
    end

    def deliver!(time = Time.now)
      @delivery_time = time + 30*60
    end

    def late?(time = Time.now)
      if time > @delivery_time
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