require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Pizza::Topping.new('mushrooms', vegetarian: true),
        Pizza::Topping.new('pepperoni')
      ]
      pizza = Pizza::Pie.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
	it 'defaults the toppings to cheese only, if the pizza has no toppings' do
	  pizza = Pizza::Pie.new

	  expect(pizza.toppings.size).to eq(1)
	  expect(pizza.toppings.first.name).to eq('cheese')
	end
  end
  describe 'add_toppings' do
  	it 'adds toppings to the pizza' do
  	  toppings = [Pizza::Topping.new('spinach', vegetarian: true),
  	  Pizza::Topping.new('bacon')	
  	  ]
  	 pizza = Pizza::Pie.new(toppings) 
  	 peppers = Pizza::Topping.new('peppers')
  	 pizza.add_toppings(peppers)
  	 expect(pizza.toppings.length). to eq(3)
  	end
  end
  describe 'deliver!' do
  	it 'marks a delivery_time attriube on the pixxa for 30 minutes from now.' do
  	  pizza = Pizza::Pie.new
  	  pizza.deliver!
  	  expect(pizza.delivery_time). to eq(Time.now + 30*60)
  	end
  end






end 

describe Pizza::Topping do
	describe '.initialize' do
		it "sets the name of the topping" do
			topping = Pizza::Topping.new('olives')
			expect(topping.name).to eq('olives')
		end
		it "sets whether or not the topping is vegetarian" do
			topping = Pizza::Topping.new 'bell peppers', vegetarian: true
			expect(topping.vegetarian).to eq(true)
		end
	describe '.vegetarian?' do
		it "returns true if all the pizza's toppings are vegetarian" do
			topping = Pizza::Topping.new 'onions', vegetarian: true
			expect(topping.vegetarian). to eq(true)
		end
	 	end
	end
end












