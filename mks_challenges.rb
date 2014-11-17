#Here you will find some of the challenges regarding the understanding of classes, instance varibales, global variables attr_accessors and readers. All these challenges had to be completed before the start of Maker Square

########################################################################

Chimpanzee Challenge

#This is a basic object oriented challenge in which we have a class Chimpanzee that acts as our object, we work with default values, instances variables and with methods that will change the value of our variables.

class Chimpanzee 
    attr_reader :is_clean
    def initialize(name, banana = 0, is_clean = true)
        @name = name
        @banana_count = 0
        @is_clean = is_clean
    end 
    
    def yell
      puts "Uhaah uahahu uahaauha!! "
  end

  def eat
        @is_clean = false
        @banana_count += 1
        puts "#{@name} has eaten too much! he has now relieved himself! is he clean? #{@is_clean}"
    end
        
    def banana_count
        @banana_count
    end
    
    def banana_count=(banana_count)
        @banana_count = banana_count
    end
    
    def bananas_eaten
        "#{@name} has eaten #{@banana_count[@name]} bananas, oh my goodness!!"
    end 
    def groom
        if @is_clean == false 
            puts "lets hit the showers you filthy animal"
        else
            puts "Nothing to do here since #{@name} is the essence of beauty and cleaningness"
        end
    end
end

marco = Chimpanzee.new("Marco")
liz = Chimpanzee.new("Liz")
samuel = Chimpanzee.new("Sam")

marco.eat
puts marco.is_clean
marco.groom
liz.eat
samuel.groom

########################################################################



BakingApp Challenge!

#This challenge required the basic use and understanding of classes attr_reader vs attr_accessor. Allows a user to be created with a balance of 0. Allows the user to make tansfers, deposit money and withdraw money!

class Person 
  attr_reader :name
  def initialize(name, cash=0)
    @name = name
    @cash = cash
  end
  
  public  
  
  def customer_info
    puts "Customer #{@name}, would like to open an account with $#{@cash}"
  end
end


class Bank  
  attr_reader :user, :account_name
  attr_accessor :balance
  def initialize(account_name, person, balance =0)
    @account_name = account_name
    @balance = balance
    @user = person
  end

  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end

  def transfer(pin_number, amount, bank_account)
    # bank_account.balance
    if pin_number == pin && @balance > amount
        @balance -= amount
        bank_account.balance += amount
        puts "#{@user.name}'s #{@account_name} transfered #{amount} to this #{bank_account.account_name}"
        puts "Your new balances are the following: #{@balance} and #{bank_account.balance}"
    elsif pin_number == pin && @balance < amount
        puts "Insufficient funds available cannot process request"
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin && @balance > amount
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    elsif pin_number == pin && @balance < amount
        puts  "Insufficient funds available cannot process request"
    else       
        puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == pin
       @balance += amount
       puts "Deposited #{amount}. New Balance: $#{@balance}."
    else 
       puts pin_error
    end 
  end

private
  
  def pin
    @pin = 12345
  end

  def pin_error
    "Access denied: incorrect PIN."
  end

end

marco = Person.new("Marco", 750)
marco.customer_info

savings_account = Bank.new("Savings Account", marco, 0)

my_account = Bank.new("Checking Account", marco, 0)
my_account.deposit(12345, 750)
my_account.withdraw(12345, 250)
my_account.display_balance(12345)
my_account.transfer(12345, 20, savings_account)

########################################################################

Car Challenge

#This challenge required the basic use and understanding of classes attr_reader vs attr_accessor, global variables as well as instance variables. This car app was designed for a company to keep count of all the cars manufactured, by color and rooftop design.

class Car
    @@total_car_count = 0
    @@cars_per_color = {}

    def self.total_car_count
        @@total_car_count
    end
    def self.cars_per_color
        @@cars_per_color
    end

    def initialize(color="bone")
    	@@total_car_count += 1
        if @@cars_per_color[color] == nil
            @@cars_per_color[color] = 1
        else 
            @@cars_per_color[color] += 1
        end
        @color = color
    end
    def color
        @color
    end

    attr_writer :color 
    def color=(color)
        @@cars_per_color[@color] -= 1
        @color = color
        if @@cars_per_color[color] == nil
            @@cars_per_color[color] = 1 
        elsif @@cars_per_color[color] != nil
            @@cars_per_color[color] += 1 
        end
        
    end
    def self.most_popular_color
        @@cars_per_color.each {|x, y| puts x if y == @@cars_per_color.values.max}
    end
end

class Convertible < Car 
    attr_accessor :roof_status
    def initialize(color="bone", convertible="false")
        @color = color
        @convertible = convertible
        
        if @convertible
        @roof_status = 'closed'
        end
    end  
    def top_down 
        if @convertible
            @roof_status = "open"
        end 
    end
    def close_top
        if @convertible
            @roof_status = "closed"
        end
    end
  end

a = Car.new("red")
b = Car.new("blue")
c = Car.new("green")
d = Car.new("red")
e = Car.new("red")
f = Car.new("blue")



puts "Car f before color change: "
p f
puts Car.cars_per_color

puts "Car f after color change: "
f.color=("purple")
p f
puts f.color

puts "Cars per color hash after color change: "
puts Car.cars_per_color

car_a = Car.new()
car_b = Car.new() 

p Car.cars_per_color

convertible_car = Convertible.new()
puts "This is the test for our convertible car"
p convertible_car  
p convertible_car.close_top

########################################################################

CookBook Challenge

#This challenge is very similar to the previous ones, the twist with this one however is the included use of arrays. It allows the user to create Recipies using the Recibe class and then push that class object into an empty array which is an instance variable of CookBook.

class Cookbook
  attr_accessor :title
  attr_accessor :recipes
  def initialize(title)
    @title = title
    @recipes = []
  end
  def add_recipe(recipe)
    @recipes.push(recipe)
    puts "Added a recipe to the collection: #{recipe.title}"
  end
end

class Recipe
  attr_accessor :title
  attr_accessor :ingredients
  attr_accessor :steps
  def initialize(title, steps, ingredients)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end
end 


mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
mex_cuisine.title = "Mexican Recipes"

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito) # Added a recipe to the collection: Veggie Burrito
p mex_cuisine.recipes #

########################################################################




