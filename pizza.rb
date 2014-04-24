class Pizza
  attr_accessor :toppings
  # def initialize(*toppings)
  #   if toppings == []
  #     @toppings = [Topping.new('cheese')]
  #   else
  #     @toppings = toppings
  #   end
  def initialize(toppings=[Topping.new('cheese')])
    @toppings = toppings
  end


  def vegetarian?


    @toppings.all? do |topping|
      topping.vegetarian == true
    end
  end

  def add_topping(new_topping)
    @toppings << new_topping
  end
end

class Topping
  attr_accessor :name, :vegetarian
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end
end
