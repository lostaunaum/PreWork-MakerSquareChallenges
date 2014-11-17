######################################################################

Ruby Assessment

######################################################################

garage_items = ["computer", "black backpack", "tv stand", "office chair"]

garage_items[1]

garage_items[3] = "rolling office chari" #This would be to update the last iteam instead of adding an item to the array
garage_items.push("rolling desk chair")

garage_items.delete("tv stand")

garage_items.insert(1, "couch")

garage_items.push('table', 'blender')

########################################################################

#garage_sale.rb

garage_items = ["computer", "couch", "black backpack", "rolling desk chair", "table", "blender"]

garage_items.sort
sorted_garage_items = garage_items
puts "sorted garage items"
puts sorted_garage_items

#figure out the bug

garage_items.sort = sorted_garage_items #this item here is wrong 

####should be, because the variable always has to go to the left. 

sorted_garage_items = garage_items.sort 

puts "sorted garage items"
puts sorted_garage_items

########################################################################

#decending order

garage_items.reverse


#new array with capitalize elements

garage_items_capitalize = []

garage_items.map do |x|
     garage_items_capitalize.push(x.capitalize)
end


#print an ordered list of the capatilized items using each

garage_items_capitalize.sort.each do |x|
    puts x
end

garage_items_capitalize.each_with_index do |value, index|
    puts value
end 

########################################################################

garage_items_capitalize.each_with_index do |value, index|
    puts "#{index + 1} is #{value}"
end 

#iterate through the array of the smith family, and print out their full names

smith_family = ["John", "Jane", "Jacob"]
last_name = "Smith"

full_names =[]

smith_family.each do |x|
    full_names.push("#{x} #{last_name}")
end

########################################################################

HASHES

7
Put each of these scripts in a seperate file, complete the TODO and run it until it works.

8
# TODO: Create a new empty hash
people = {}

9
# TODO: Create a hash with a symbol as a key and a string as a value
people = {:name => "Marco"}

10
# TODO: Did you know that hashes can accept anything as a key and anything
# as a value? Try atleast 5 different combinations of key/values
# using different data types. Example: hash = {4.5 => :my_symbol}
people = {:name => "Marco", 6.7 => "height", "peotry" => "justice", 44 => 45}

11
# TODO: Start with an empty hash and insert a new key/value pair into
# the hash using hash[<key>] = <value>
people = {}
people["Marco"] = "Awesome!!"

12
# TODO: Use the merge method to put together the 2 given hashes into another variable
hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}

merged_hash = hash1.merge(hash2)

13
# TODO: Use the merge! method to put together the 2 given hashes into hash1
# Question: What's the difference between 'merge' and 'merge!'' ?
hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}

merged_hash = hash1.merge!(hash2)

#difference is that merge if it finds duplicate methods it will use the methods of the "other hash" while merge!
#will over write those values with the values of the "other hash"


14
# TODO: Run the each_pair loop with the hash that results from the previous exercise.
# Look up documentation on how to use each_pair on ruby-doc.org
15
hash = {"name" => "bob", :job => "builder", 21 => "current_age"}
# TODO: Print each of the values in the hash. Use the keys (you don't need to use a loop)
puts hash["name"]
puts hash[:job]
puts hash[21]

16
# TODO: Print each of the values in the hash. Use the keys (don't use loops)
hash = {
    "name" => {
        :first => "Louis",
        :last => "The Thirteenth"
    },
    "father" => {
        "name" => {
            :first => "Louis",
            :last => "The Twelvth"
        },
        "father" => {
            "name" => {
                :first => "Louis",
                :last => "The Eleventh"
            },
            "father" => "You've gotta be kidding me!"
        }
    }
}

puts hash["name"][:first]
puts hash["name"][:last]
puts hash["father"]["name"][:first]
puts hash["father"]["name"][:last]
puts hash["father"]["father"]["name"][:first]
puts hash["father"]["father"]["name"][:last]


17
# TODO: Use an each loop on the outter array and print out the information about each
# of my friends.

my_friends = [
    {
        :name => "Bob",
        :occupation => "Builder"
    },
    {
        :name => "Dora",
        :occupation => "Explorer"
    },
    {
        :name => "Mandy",
        :occupation => "Handy(wo)man"
    },
]

my_friends.each do |x|
    puts "#{x[:name]} is #{x[:occupation]}"
end

########################################################################

class Pet
  attr_accessor :age
  
  def initialize(type, name, age)
    @type = type
    @name = name
    @age = age
  end
end
 
marlo = Pet.new('dog', 'Marlo', 3)
boots = Pet.new('cat', 'Boots', 5)
goldy = Pet.new('gold fish', 'Goldy', 1)
 
pet_array = [marlo, boots, goldy]
 
# using pet_array, create an array of just the pet names: ["Marlo", "Boots", "Goldy"]. Try it using the method 'map'
# write the answer here

pet_array.map do |x|
    x.name
end

# create a method that goes through pet_array and increments each pet's age by 1
# write the answer here
 
 pet_array.map do |x|
    x.age += 1
end 

# using pet_array, select the pet with the name 'Boots'. Try doing this with the 'select' and 'find' method. 
# write the answer here
 
pet_array.find {|x|  x.name == 'Boots'}

# what is the difference between the methods 'select' and 'find'?
# write the answer here

########################################################################
 
# what will be the value of x after we run this line of code? 
x = nil && "hello world"  # => answer here
# why is that the case?
# answer here
 
# what will be the value of x after we run this line of code? 
x = "goodbye" && "hello world" #=> answer here
# why is that the case?
# answer here
 
# what will be the value of x after we run this line of code? 
x = "goat" || "cat" # => answer here
# why is that the case?
# answer here
 
# what will be the value of x after we run this line of code?
x = nil ||"eureka"
# why is that the case?
# answer here
 
########################################################################
 
my_friends = [
    {
        :name => "Bob",
        :occupation => "Builder"
    },
    {
        :name => "Dora",
        :occupation => "Explorer"
    },
    {
        :name => "Mandy",
        :occupation => "Handy(wo)man"
    },
]
 
answer here

my_friends.each do |x| 
    puts "#{x[:name]} is #{x[:occupation]}"
    # x.each do |y, z| 
    #     puts "#{z} is #{z}"
    # end
end

new_arr = ["Builder", "Explorer", "Handy(wo)man"]

new_arr = []
my_friends.each do |x|
    new_arr.push(x[:occupation])
end

y = my_friends.map do |x|
    (x[:occupation])
end 


############################################################################################################################
############################################################################################################################
 
# Iterate through the array of the Smith family members using `each` and add the last name to each person. The array should look like this at the end: `["John Smith", "Jane Smith", "Jacob Smith"]`
 
smith_family = ["John", "Jane", "Jacob"]
last_name = "Smith"
 
# answer here

 
smith_family = ["John", "Jane", "Jacob"]
last_name = "Smith"

new_arr = []
smith_family.each do |x|
    new_arr.push("#{x} #{last_name}")
end

 smith_family.map do |x|
     "#{x} " + last_name
 end

# What does the third line evaluate to?
 
x = 5
x += 3
x / 2 + 10   #=> ANSWER HERE  14 
 
##############################################################
 
# Get the first element of 'teams'
 
teams = ["Knicks", "Celtics", "76ers", "Raptors"]

teams[0]
 
 
##############################################################
 
# Provide 2 ways to get the last element of 'teams'. 
 
teams = ["Giants", "Cowboys", "Eagles", "Steelers"]
 
 teams.last
 teams[3]
 
 
##############################################################
 
# Provide two ways to add the word 'Shady' to the end of 'rapper'
 
rapper = ["The", "Real", "Slim"]

rapper.push("Shady")
rapper.insert(3, "Shaddy")
rapper[3] = "Shady"

 
 
 
##############################################################
 
# Iterate through the following array and print each
# element to the screen.
 
ary = ["MakerSquare", "is", "cool!"]

ary.each do |x|
  puts x 
end 
 
 
 
##############################################################
 
# Iterate through 'names' and return a new array with each
# name capitalized.
 
names = ["nick", "mike", "shehzan", "gilbert"]

names.map do |x| 
  x.capitalize
end 
 
names.each do |x| 
  names_cap.push(x.capitalize)
end 

######This is the last point of the revision#########
 
##############################################################
 
# What is the value of 'y'?
 
x = "I love java, er, I mean ruby!"
y = x.split[2]   #=> ANSWER HERE

"java,"


 
##############################################################
 
# What are two ways to concatenate the following strings?
 
first = "Ruby "
second = "forever!!!"

first.concat(second) #BE very careful with this one since it will CHANGE the contents of the FIRST STRING!!!!!
first + second
"#{first} #{second}"
 
##############################################################
 
# Create a new hash that contains some information about yourself
 
me = { :name => "Marco", :lastname => "Lostaunau", :age => 25  } #=> ANSWER HERE 

 
##############################################################
 
# The formula to convert Fahrenheit temperatures to Celsius is:
#    1. subtract 32 from the Fahrenheit temperature
#    2. multiply by 5
#    3. divide by 9
# Write a method called f2c that takes a temperature and in
# Fahrenheit and returns its Celsius equivalen
 
 
# ANSWER HERE
 
x = 30
f2c = ((x-32) * 5)/9 #### This is not a method, its a variable

def f2c(x)
    ((x-32) * 5)/9
end 

p f2c(55)  #### This is a method however lets try to do it by using a class

###########

class Temperature #### As we can see we can have a class with no initialize method, we dont need one
    def f2c(x) # WE are giving an argument to our method within the class
        ((x-32) * 5)/9
    end 
end

# temp = 25
t = Temperature.new # we are creating a variable T within the class
p t.f2c(25) # No we proceed to run the method directly on the newly created variable! :D:D:D:D:D

# f2c(25)
 
##############################################################
 
# What does the following method return?
# Next to each call to 'some_method' write
# a comment that says what the return value is.
 
def some_method(x)
  if x > 5 && x < 10
    return :a
  elsif x < 5
    return :b
  end    
 
  :c
end
 
some_method(3)    #=>  ANSWER HERE :b
some_method(12)   #=>  ANSWER HERE :c
some_method(7)    #=>  ANSWER HERE :a
 
##############################################################
 
# What is the output of the following expression.
 
if !"nick"
  puts "He's a cool guy!"
end

"Nil and does not print the sentence because string nick is of truthy value, 
by saying not to soemthing truthy, you are stating to ruby not truthy which is false, giving us a 
falsy statement"

##############################################################
 
# What is the value of x?
 
def check_truth?(statement)
  if statement == nil
   "Neither exactly true nor false"
  elsif statement == true
   "It's true!"
  else
   "I admit, tis' false."
  end
end
 
x = check_truth?("Ruby is awesome!") 
 
#=> ANSWER HERE    

"The answer would be I admit, tis' false Because a string is truhty but it does not == to truth, so its not nil but its not truth"
 
##############################################################
 
# What is the value of x?
 
  def consume_arr(y)
   y.each { |elem| puts (elem*2) }
  end
   
  x = consume_arr([2,4,6])
   
  #=> ANSWER HERE

  #x = "4, 8, 12" #X is actually equal to the ORIGINAL array, why? Because we are using the method EACH will automatically give you the
  #original array

  x= [2, 4, 6]
   
##############################################################
 
 
# The following 3 lines of code have errors. Please correct them.
# You can change them in place.
 
var name = "Nick McDonnough"
pop_punk = "Blink" + 182
7 / 2 == 3.5   # there are multiple acceptable answers for this one.

###Answers

var_name = "Nick McDonnough"
pop_punk = "Blink " + 182.to_s
7.0/2.0 == 3.5
 
##############################################################
 
# What is the output of the following code 
 
def recursion(x)
  return "HEYO!" if x >= 5
  puts x
  recursion(x += 1)
end
 
recursion(0)   #=> ANSWER HERE 0, 1, 2, 3, 4, HEYO!
 
recursion(6)   #=> ANSWER HERE HEYO!
 
##############################################################
 
# Given the following data structure please answer the
# questions below it
 
ballers = [
  {:name => "Michael Jordan", :team => "Chicago"},
  {:name => "Larry Bird", :team => "Boston"},
  {:name => "Isiah Thomas", :team => "Detroit"}
]
 
# How would you access Larry Bird's team?
# ANSWER HERE

 ballers[1][:team]

# How would you return an array containing only the player names?
# ANSWER HERE

ballers.map do |x|
  x[:name]
end 
 
##############################################################
 
# Using the above hash, what does the following return?
ballers[-1].size    #=> ANSWER HERE

"It returns 2 because the last hash of the array only contains two key value pairs"
 
##############################################################
# STAR - DO AGAIN differently
# Return the cast members of The Sopranos as a single
# string separated by commas.
 
tv_shows = {
  "Mad Men" => {:network => "AMC", :cast => ["John Hamm", "John Slattery", "Elizabeth Olson"]},
  "Dexter" => {:network => "Showtime", :cast => ["Michael C. Hall", "Jennifer Carpenter", "CS Lee"]},
  "The Sopranos" => {:network => "HBO", :cast => ["James Gandolfini", "Michael Imperioli", "Edie Falco"]}
}
 
# ANSWER HERE
tv_shows["The Sopranos"][:cast].each do |x|
    print " #{x},"
end 
##############################################################
# STAR - DO AGAIN differently
# Iterate through 'words' and return the following sentence:
#    "I'm excited for MakerSquare!""
 
words = [
  ["I'm", "eating", "pizza"],
  ["Excited", "begins", "with", "E"],
  ["For", "sale"],
  ["MakerSquare", "is", "awesome!"]
]
 
# ANSWER HERE. 

words.each do |x| 
    print " #{x[0]}"
end 

##############################################################
 
# How would I access the value "Austin" in this hash?
 
person = {
  :name => "Nick McDonnough",
  :age => 28,
  :address => {
    :street => "2520 Elmont St",
    :city => "Austin",
    :state => "TX"
  }
}
 
# ANSWER HERE

print person[:address][:city]
 
##############################################################
 
# Iterate through 'nums' and return a new array containing
# only numbers larger than 10. Bonus if the array is sorted
# from highest to lowest.
 
nums = [2, 9, 3, 12, 7, 5, 99, 5, 62]
nums_1 = []

nums.select do |x| 
    if x > 10
        nums_1.push(x)
    end 
end 

nums_1.sort

"The reason why I used select instead of MAP was to get rid of the NIL values, in order for ruby to give a sorted array I needed to create
a new array and run the SORT method on it."
 
##############################################################
 
# What does the 'initialize' method do?
# A sentence or two will suffice.
 "initialize means to give something an initial value"

 "INTIALIZE WILL BE THE FIRST METHOD THAT RUNS AS SOON AS YOU CREATE A NEW INTSANCE OF A CLASS"
 
##############################################################
 
# Create a Person class based off of this behavior
# This will take up many lines. You can start your answer here.
######CORRECTED WITH GENE##############
class Person
    attr_accessor :age #I needed an accessor in order to change the age without using a method
    attr_reader :name #I needed a reader in order to be able to push the names into the empty @@kids array
    @@kids = [] #this is my empty array
    #What is the problem with the double @@??? It creates an array that will store all the information for the entire class
    #what does this mean, that if we keep adding children to this array it will keep them even if they are not bobbies or tims children
  def initialize(name, age)
    @name = name 
    @age = age
  end 
  def birthday
    @age += 1 #By using += i can change the age of the person
  end
  def kids(person)
      @@kids.push(person) #I use @@ to create a global instance varibale in which I can manipulate it outside this method
      #This will not work with the code given in the exercise, since you cant change that this is wrong. 
  end 
  def family
      puts "Bobby has two children:" #waht if you have another person that is not called bobby and does not have 2 kids but 50??????
      @@kids.each do |x| 
          puts "#{x.name} aged #{x.age}"
      end
  end
end 

bobby = Person.new("Bobby", 25)
 
bobby = Person.new("Bobby", 28)
bobby.age  #=> 28
bobby.birthday
bobby.birthday
bobby.age  #=> 30
 
tim = Person.new("Tim", 1)
sam = Person.new("Sam", 1)
 
bobby.kids << tim
bobby.kids << sam
 
bobby.family  #=> "Bobby has 2 children:
              #=>  Tim,
              #=>  Sam"

#################IMPROVED CORRECTED CODE#############################

class Person
    attr_accessor :age #I needed an accessor in order to change the age without using a method
    # attr_reader :name #I needed a reader in order to be able to push the names into the empty @@kids array
    #There is no need for a reader since we have a getter within the class instance
  def initialize(name, age)
    @name = name 
    @age = age
    @kids = [] #we have corrected our empyt array and made it local 
  end 
  def birthday
    @age += 1 #By using += i can change the age of the person
  end
  def kids
      @kids #There is no need to push since the exercise is giving us the shovel (<<) ,method, all we need to do is call 
      #the original empty array
  end 
  def family
      puts "#{@name} has #{@kids.length} children: " # as we can see now if we have an other instance of the class we can interpolate
      #their information making it more accurate to their particular case 
      @kids.each do |x| 
          puts "#{x.name} aged #{x.age}"
      end
  end
end 

bobby = Person.new("Bobby", 25)
 
bobby = Person.new("Bobby", 28)
bobby.age  #=> 28
bobby.birthday
bobby.birthday
bobby.age  #=> 30
 
tim = Person.new("Tim", 1)
sam = Person.new("Sam", 1)
 
bobby.kids << tim
bobby.kids << sam
 
bobby.family  


tim = Person.new("Tim", 39)
susan = Person.new("Susan", 15)
gene = Person.new("Gene", 18)
victor = Person.new("Victor", 20)
tim.kids << susan
tim.kids << gene
tim.kids << victor
 
##############################################################
 
# Create a new class Person that is initialized with a name and an age 
# (Yes, we know that the code below does not initialize the class with an age).
# In the Person class create a method 'talk' that takes a single parameter
# and prints it to the screen.
# Create a Singer class that inherits from Person. Singer should have a
# method 'sing'. The following code describes the behaviour of the classes.
 
# This will take up many lines. You can start your answer here.

class Person
    def initialize(name, age=21)
        @name = name
        @age = age
    end 
    def talk(x)
        print(x)
    end
    def greet
        "Hey, there! I am #{@name}"
    end
end 

class Singer < Person
    def sing
       puts "R-E-S-P-E-C-T. Find out what it means to me!"
    end
end 
 
 
aretha = Singer.new("Aretha Franklin")
aretha.greet  #=> "Hey, there! I'm Aretha Franklin!"
aretha.sing   #=> "R-E-S-P-E-C-T. Find out what it means to me!"
 
nick = Person.new("Nick")
nick.greet   #=> "Hey, there! I'm Nick!"
nick.talk("Prework is super important!")  #=> "Prework is super important!"
nick.sing  #=> NoMethodError
 
 
##############################################################
 
# Rewrite the code below to expand the attr's  into the
# methods they represent. You can simply replace the code.
 
class Cookie
  # attr_reader :type
  # attr_accessor :calories
  def initialize type, calories
    @type = type
    @calories = calories
  end
  def type=(type)
    @type = type
  end 
  def type
    @type
  end 
  def calories=(calories)
    @calories = calories
  end
  def calories
    @calories
  end 
end 
 
##############################################################
 
# What is a class variable? Why might you use one?
# Just write a sentence below. You can provide some code if
# you're not sure how to word it.

"A class varibale is an instance of a class for exmaple" 

class Person
  def intialize(name)
    @name = name
  end
end

marco = Person.new("Marco") #This would be a class variable
 
##############################################################
 
# What is a block? Please provide a code example along with
# a sentence or two explaining it.
 
"A block can be roughly defined as a chunk of code that helps obtain a result for example"

arr = [1, 2, 3, 4, 5, 6]

arr.map do |x| # this would be considered a block of code
    x*1000
end 
 
##############################################################
 
# Describe the scope of the following variable types. If you have
# trouble putting it to words you can use some code.
 
# local a variable that can only be used within a method

arr.map do |x| #x is a local variable and can only be used within this method 
  x*1000
end 

# instance, a varibale that is defined in a class and available throughout ONE class


# class, a variable that is defined in a class of which a single copy exists regardless of how many instances of this class exist
 
##############################################################
 
# When you call the 'methods' method you receive a list of
# all methods available to that object based on what class it
# is in. Knowing that please answer the question below.
 
class Test
end
 
x = Test.new
x.methods.count   #=> 54
 
# If we didn't write any methods for our Test class how did it
# the 'methods' method find 54 methods associated with it?

########################################################################




















