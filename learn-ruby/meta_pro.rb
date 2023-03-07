instance_variable_set("@foo#{"bar"}", 123)
@foobar = 345
puts instance_variable_get("@foo#{"bar"}")
puts @foobar
obj.send("foo#{"bar"}")
obj @foobar

class Developer
  def self.backend
    "I am backend developer"
  end

  def frontend
    "I am frontend developer"
  end
end

p Developer.class # Class
p Class.superclass # Module
p Module.superclass # Object
p Object.superclass # BasicObject

class Developer
  p self
end # Developer

class Developer
  def frontend
    self
  end
end

p Developer.new.frontend

example = "I'm a string object"
def example.something
  self.upcase
end

p example.something
# I'M A STRING OBJECT
example = "I'm a string object"
class << example
  def something
    self.upcase
  end
end
p example.something

class Developer
  def self.backend
    "asdasdsadsad"
  end
end

class Developer
  class << self
    def backend
      "I am backend developer"
    end
  end
end

class LearnSendMethod
  def ga(name)
    puts "I am " + name
  end
end

a = LearnSendMethod.new
a.send(:ga, "cum gia cam") # Tham so dau tien la method minh goi sau do la cac tham so truyen vao tuong ung

if a.respond_to? :dog, true # kiem tra xem method co ton ai hay ko, true la cac method private va protected
  puts "sai ten method"
else
  a.send(:ga, "H5N1")
end

class InstanceEval
  def initialize(name)
    @name = name
  end

  def cum
    puts "I am " + name
  end

  attr_reader :name
end

ga = InstanceEval.new("H1N1")

if ga.respond_to? :cum, true # kiem tra xem method co ton tai hay ko, true la cac method private va protected
  #   ga.send(:cum) #
  ga.instance_eval do # cho phep truy cap va thay doi thuoc tinh
    puts "I am " + @name
  end
else
  puts "Method meos ton tai"
end
InstanceEval.class_eval do # dinh nghia them method trong class
  def dogs
    puts "I am dog" + name
  end
end
ga.dogs # =&gt;
# class_eval định nghĩa instance methods, còn instance_eval định nghĩa class_methods
class MethodMissing
  def method_missing(n, *args, &block)
    puts "Goi #{n} toi #{args.inspect} va #{block}"
  end
end

puts MethodMissing.new.conconcon
MethodMissing.new.anything(3, 4) { }
# conconcon la tham so dau tien 3,4 la tham so thu hai
require "date"

class DateTime
  def weekday?
    !sunday? && !saturday?
  end
end

dt = DateTime.new
puts dt.weekday?

puts dt.month
require "date"

module CoreExtensions
  module DateTime
    module BusinessDays
      def weekday?
        !sunday? && !saturday?
      end
    end
  end
end

puts DateTime.include? CoreExtensions::DateTime::BusinessDays

class String
  def upcase
    self.reverse
  end
end

puts "ADOSAHDOsadklasd".upcase

def giaithua(n)
  if n == 0
    return 1
  else
    return n * giaithua(n - 1)
  end
end

puts giaithua(4)
require "prime"
Prime.each(9) do |i|
  puts i
end

def armstrong?(n)
  digits = n.to_s.chars.map(&:to_i)
  sum = digits.inject(0) { |sum, digit| sum + digit ** digits.length }
  sum == n
end

puts armstrong?(555)
