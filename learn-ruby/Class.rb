class Person # dinh nghia 1 lop
  #   attr_accessor :name, :age, :adr, :phone

  #   def initialize(name, age, adr, phone) # phuong thuc khoi tao
  #     @name = name
  #     @age = age
  #     @adr = adr
  #     @phone = phone
  #   end

  #   def get_name #phuong thuc truy cap (accessor methods)
  #     @name
  #   end

  #   def get_age #phuong thuc truy cap (accessor methods)
  #     @age
  #   end

  #   def get_adr #phuong thuc truy cap (accessor methods)
  #     @adr
  #   end

  #   def get_phone #phuong thuc truy cap (accessor methods)
  #     @phone
  #   end

  #   private :get_name, :get_age, :get_adr, :get_phone # private chi truy cap rieng tu dc chia se

  #   def set_name=(value) # thiet lap phuong thuc (setter method)
  #     @name = value
  #   end

  #   def set_age=(value) # thiet lap phuong thuc (setter method)
  #     @age = value
  #   end

  #   def set_adr=(value) # thiet lap phuong thuc (setter method)
  #     @adr = value
  #   end

  #   def set_phone=(value) # thiet lap phuong thuc (setter method)
  #     @phone = value
  #   end

  #   def get_show # instance method hanh dong cu the co tra ve ket qua
  #     puts "Toi ten la #{get_name} nam nay toi #{get_age} nha o #{get_adr} SDT toi #{get_phone}"
  #   end

  #   def get_show1 # instance method
  #     puts "Toi ten la #{@name} nam nay toi #{@age} nha o #{@adr} SDT toi #{@phone}"
  #   end

  #   protected :get_show1 # chia se trong lop cha va cac lop con ko chia se ben ngoai
  def self.thongtin(*args)
    args.each do |i|
      attr_accessor "#{i}_price", "#{i}_info"
    end
  end
  thongtin :name, :age, :adr, :phone
end

Person.thongtin("dat", 25, "ha noi", "123456789")

class Dat < Person # Ke thua Clas (subclass)
  def self.get_show2(person) #tao 1 class method co tham so
    puts "#{person.name} nam nay #{person.age} o #{person.adr} toi #{person.phone}"
  end
end

cus1 = Person.new("Dat", 23, "Ha Noi", "0359360625") # tao 1 object (cus1 se la 1 object de truy cap cac method trong class do)
# truy cap setter method
cus1.set_name = "Hieu"
cus1.set_age = 22
cus1.set_adr = "Ha Nam"
cus1.set_phone = "1234456"

cus1.set_name = "Hieu"
cus1.set_age = 22
cus1.set_adr = "Ha Nam"
cus1.set_phone = "1234456"

cus1.set_name = "Hieu"
cus1.set_age = 22
cus1.set_adr = "Ha Nam"
cus1.set_phone = "1234456"

truy cap accessor method
a = cus1.get_name
b = cus1.get_age
c = cus1.get_adr
d = cus1.get_phone
cus1.get_show1
puts "Ten: #{a}\nTuoi: #{b}\nDia chi: #{c}\nSDT: #{d}"
toi = cus1.get_show

puts cus1.methods.sort
cus1.freeze
if cus1.frozen?
  puts "object cus1 da dong bang"
else
  puts "object cus1 binh thuong"
end
Dat.get_show2(cus1)

h = { foo: 0, bar: 1, baz: 2 }
h1 = { bat: 3, bar: "ga" }
h2 = { bam: 5, bat: 6 }
h3 = h.merge(h1, h2) { |key, old_value, new_value| [old_value, new_value] }
p h3 # => {:foo=>0, :bar=>5, :baz=>2, :bat=>9, :bam=>5}

h = { foo: 0, bar: 1, baz: 2 }
h.merge # => {:foo=>0, :bar=>1, :baz=>2}
h1 = h.merge! { |key, old_value, new_value| raise "Cannot happen" }
h1 # => {:foo=>0, :bar=>1, :baz=>2}

my_object = Object.new
def my_object.set_value(var)
  @intance_variable = var
end
def my_object.get_value
  @intance_variable
end

my_object.set_value("Hello, world!")
puts my_object.get_value # => "Hello, world!"

MyClass = Class.new
def MyClass.viet_in_hoa
  name.upcase
end

puts MyClass.viet_in_hoa

class CarModel
  FEATURES = ["engine", "wheel", "airbag", "alarm", "stereo"]
  FEATURES.each do |feature|
    define_method("#{feature}_info") do |info|
      instance_variable_set("@#{feature}_info", info)
    end
    define_method("#{feature}_info") do
      instance_variable_get("@#{feature}_info")
    end
    define_method("#{feature}_price") do |price|
      instance_variable_set("@#{feature}_price", price)
    end
    define_method("#{feature}_price") do
      instance_variable_set("@#{feature}_price")
    end
  end
end

def self.heo
  helu = "Be heo cute"
  puts helu
end
self.heo

class Klass
  private

  def hello(*args)
    "Hello " + args.join(" ")
  end
end

k = Klass.new
# k.hello("Hello", "world")
p k.send :hello, "world", "Hello"

class Roman
  def roman_to_int(str)
    #...
  end

  def method_missing(methID)
    str = methID.id2name
    roman_to_int(str)
  end
end

r = Roman.new
puts r.v

class MyGhostClass
  def method_missing(name, *args)
    puts "#{name} was called with arguments: #{args.join(",")}"
  end
end

m = MyGhostClass.new
m.awesome_method("one", "two") # => awesome_method was called with arguments: one,two
m.another_method("three", "four") #

class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def actual_minutes_in_oven(layers)
    return layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    return number_of_layers * 2 + actual_minutes_in_oven
  end
end

puts Lasagna.new.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)

class Attendee
  attr_reader :height, :pass_id

  def initialize(height)
    @height = height
    revoke_pass!
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

attendee = Attendee.new(106)
attendee.issue_pass!(42)
puts attendee.pass_id

puts Attendee.new(106).pass_id
puts att.height
puts att.pass_id

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    parts = @line.split(" ")
    parts.shift
    message = parts.join(" ")
    return message
  end

  def log_level
    parts = @line.split(" ")
    log_level = parts.first.downcase.delete("[]:")
    return log_level
  end

  def reformat
    log_level = self.log_level
    message = self.message
    reformatted_line = "#{message} (#{log_level.downcase.delete("[]:")})"
    return reformatted_line
  end
end

puts LogLineParser.new("[ER]: Invalid operation").message
puts LogLineParser.new("[ERROR]: Invalid operation").log_level
puts LogLineParser.new("[INFO]: Operation completed").reformat

require "minitest/autorun"
require_relative "two_fer"

class TwoFerTest < Minitest::Test
  def test_no_name_given
    # skip
    assert_equal "One for you, one for me.", TwoFer.two_fer
  end

  def test_a_name_given
    skip
    assert_equal "One for Alice, one for me.", TwoFer.two_fer("Alice")
  end

  def test_another_name_given
    skip
    assert_equal "One for Bob, one for me.", TwoFer.two_fer("Bob")
  end
end

# Đọc tệp đầu vào và tạo một mảng chứa tất cả các trận đấu
matches = []
File.readlines("input.txt").each do |line|
  match = line.chomp.split(";")
  matches << { home_team: match[0], away_team: match[1], result: match[2] }
end

# Tạo một bảng để lưu trữ thông tin đội bóng và điểm số
table = {}

# Xử lý các trận đấu và cập nhật bảng điểm số
matches.each do |match|
  # Cập nhật thông tin cho đội nhà
  if table[match[:home_team]].nil?
    table[match[:home_team]] = { MP: 0, W: 0, D: 0, L: 0, P: 0 }
  end
  table[match[:home_team]][:MP] += 1
  case match[:result]
  when "win"
    table[match[:home_team]][:W] += 1
    table[match[:home_team]][:P] += 3
  when "draw"
    table[match[:home_team]][:D] += 1
    table[match[:home_team]][:P] += 1
  when "loss"
    table[match[:home_team]][:L] += 1
  end

  # Cập nhật thông tin cho đội khách
  if table[match[:away_team]].nil?
    table[match[:away_team]] = { MP: 0, W: 0, D: 0, L: 0, P: 0 }
  end
  table[match[:away_team]][:MP] += 1
  case match[:result]
  when "win"
    table[match[:away_team]][:L] += 1
  when "draw"
    table[match[:away_team]][:D] += 1
    table[match[:away_team]][:P] += 1
  when "loss"
    table[match[:away_team]][:W] += 1
    table[match[:away_team]][:P] += 3
  end
end

# Sắp xếp bảng theo thứ tự giảm dần của điểm số và tên đội bóng
sorted_table = table.sort_by { |k, v| [-v[:P], k] }

# In ra bảng kết quả
puts "Team                           | MP |  W |  D |  L |  P"
sorted_table.each do |team, stats|
  puts format("%-30s | %2s | %2s | %2s | %2s | %2s", team, stats[:MP], stats[:W], stats[:D], stats[:L], stats[:P])
end

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def show
    puts "name: #{@name} age: #{@age}"
  end

  def show
    puts "age: #{@age} name #{@name}"
  end
end

per = Person.new("adt", 2)
per.show

class Class
  alias old_new new

  def new(*args)
    puts "Creating a new", self.name
    old_new(*args)
  end
end

class Name #ke thua lop Class
end

n = Name.new
puts n

class Foo
  def self.inherited(subclass)
    puts "New subclass: #{subclass}"
  end
end

class Bar < Foo
end

class Bax < Bar
end

Bax.inherited
