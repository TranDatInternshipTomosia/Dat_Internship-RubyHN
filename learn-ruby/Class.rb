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
input = "Allegoric Alaskans;Blithering Badgers;win\nDevastating Donkeys;Courageous Californians;draw\nDevastating Donkeys;Allegoric Alaskans;win\nCourageous Californians;Blithering Badgers;loss\nBlithering Badgers;Devastating Donkeys;loss\nAllegoric Alaskans;Courageous Californians;win\nAllegoric Alaskans;Blithering Badgers;draw\nDevastating Donkeys;Courageous Californians;loss\nDevastating Donkeys;Allegoric Alaskans;loss\nCourageous Californians;Blithering Badgers;draw\nBlithering Badgers;Devastating Donkeys;win\nAllegoric Alaskans;Courageous Californians;win"
input.each_line do |line|
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

class Point
  attr_reader :x, :y

  def initialize(x = 0, y = 0)
    @x = x.to_i
    @y = y.to_i
  end

  def ==(point)
    @x == point.x && @y == point.y
  end

  def distance(point)
    Math.hypot((@x - point.x), (@y - point.y))
  end
end

class Traingle
  attr_reader :a, :b, :c, :type

  def initialize(a, b, c)
    raise "Invalid data, a Traingle can only be initialized through points" unless [a, b, c].all? { |p| p.is_a?(Point) }
  end

  private

  def calculate_ty
    if a.distance(b) == b.distance(c) && b.distance(c) == c.distance(a)
      puts "equilataral"
    elsif a.distance(b) == b.distance(c) || b.distance(c) == c.distance(a) || c.distance(a) == a.distance(b)
      puts "isosceles"
    else
      puts "scalene"
    end
  end
end

a = Point.new(0, 0)
b = Point.new(1, 1)
c = Point.new(2, 0)
traingle = Traingle.new a, b, c
puts traingle.type

class Tournament
  def self.tally(input)
    self.new.tally(input)
  end

  def tally(input)
    headers = ["Team", "MP", "W", "D", "L", "P"]
    tally = {}

    str = format(headers)
    input.split("\n").map(&:strip).each do |row|
      home, away, result = row.split ";"
      tally[home] = { mp: 0, w: 0, d: 0, l: 0, p: 0 } if tally[home].nil?
      tally[away] = { mp: 0, w: 0, d: 0, l: 0, p: 0 } if tally[away].nil?
      tally[home][:mp] += 1
      tally[away][:mp] += 1
      case result
      when "win"
        tally[home][:w] += 1
        tally[home][:p] += 3
        tally[away][:l] += 1
      when "draw"
        tally[home][:d] += 1
        tally[home][:p] += 1
        tally[away][:d] += 1
        tally[away][:p] += 1
      else
        tally[home][:l] += 1
        tally[away][:w] += 1
        tally[away][:p] += 3
      end
    end
    tally.sort_by { |k, v| [-v[:p], k] }.each do |k, v|
      arr = [k, v[:mp], v[:w], v[:d], v[:l], v[:p]]
      str << format(arr)
    end
    str
  end

  def format(array)
    sprintf "%-30s | %2s | %2s | %2s | %2s | %2s\n", *array
  end
end

class Nanp
  def initialize(std)
    @std = std
  end

  def show
    return @std.delete("+().-")
  end
end

n = Nanp.new("613-995.0253")
puts n.show

class TwoFer
  def self.two_fer(name = "you")
    puts "One for #{name}, one for me."
  end
end

TwoFer.two_fer

def so_nt(n)
  if n == 1
    return n
  end
  (2..n).each do |i|
    Math.sqrt(n).to_i
    if n % i == 0
      if n % 6 == 0 && n % 9 == 0 && n % 3 == 0
        return "so nay chia het cho ca 3 so"
      elsif n % 3 == 0
        return "so nay chia het cho 3"
      elsif n % 6 == 0
        return "so nay chia het cho 6"
      elsif n % 9 == 0
        return "so nay chia het cho 9"
      else
        return "so nay khong la so nguyen to cung ko chia dc cho 3 6 9"
      end
    else
      return "day la so nguyen to"
    end
  end
end

puts so_nt(9)

def so_nt(n)
  if n == 1
    return n
  end
  (2..n).each do |i|
    Math.sqrt(n).to_i
    if n % i == 0
      return "so nay khong la so nguyen to cung ko chia dc cho 3 6 9"
    elsif n % 6 == 0 && n % 9 == 0 && n % 3 == 0
      return "so nay chia het cho ca 3 so"
    elsif n % 3 == 0
      return "so nay chia het cho 3"
    elsif n % 6 == 0
      return "so nay chia het cho 6"
    elsif n % 9 == 0
      return "so nay chia het cho 9"
    else
      return "day la so nguyen to"
    end
  end
end

puts so_nt(23)

class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    @pass_id != @height && @pass_id != nil
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)
  end
end

p Attendee.new(100).allowed_to_ride?(100)

attendee = Attendee.new(100)
attendee.issue_pass!(1)
p attendee.allowed_to_ride?(100)

str = "Portable Network Graphics"
p str.gsub(/[-,;]/, " ").split

class Acronym
  def self.abbreviate(name)
    ga = name.gsub(/[-,;]/, " ").split
    gop = ga.map { |i| i[0] }.join("")
    return gop.upcase
  end
end

p Acronym.abbreviate("Portable Network Graphics")

class PhoneNumber
  def self.clean(number)
    number.delete!("-.+ ()")
    ga = number.chars
    ga0 = ga.slice(0..-2).select do |x|
      x == "0"
    end
    ga00 = ga0.join
    ga1 = ga.slice(0..-2).select do |x|
      x == "1"
    end
    ga11 = ga1.join
    if number[0] == "+"
      parts = number.split(" ")
      parts.shift
      clean = parts.join("").delete("-.+ ()")
      return clean
    elsif number.length >= 10 && ga00 == "0"
      return nil
    elsif number[0] == "1" && number.length == 11
      parts = number.split("")
      parts.shift
      clean = parts.join("").delete("-.+ ()")
      return clean
    elsif number.length == 9 || number.length > 10 || number.match(/[a-zA-Z]/) || number.match(/[\W]/) || number[0] == "0" || number[0] == "1" || number[0] == "2"
      return nil
    elsif number.length == 11 && ga11 != "1"
      return nil
    else
      return number
    end
  end
end

p PhoneNumber.clean("(223) 156-7890")

class PhoneNumber
  def self.clean(number)
    number.delete!("-.+ ()")
    ga = number.chars
    # ga0 = ga.slice(0..-2).select do |x|
    #   x == "0"
    # end
    # ga00 = ga0.join
    # if number.length >= 10 && ga00 == "0"
    #   return nil
    # else
    #   return number
    # end
    return ga
  end
end

p PhoneNumber.clean("(223) 156-7890")

arr = ["2", "2", "3", "1", "5", "6", "7", "8", "9", "0"]

zero_elements = arr.slice(0..-2).select { |x| x == "1" }

p zero_elements.join == "1"

class PhoneNumber
  def self.clean(number)
    number.delete!("-.+ ()")
    ga = number.chars
    ga0 = ga.slice(0..-2).select do |x|
      x == "0"
    end
    ga00 = ga0.join
    ga1 = ga.slice(0..-2).select do |x|
      x == "1"
    end
    ga11 = ga1.join
    if number[0] == "+"
      parts = number.split(" ")
      parts.shift
      clean = parts.join("").delete("-.+ ()")
      return clean
    elsif number.length >= 10 && ga11 == "1"
      return nil
    elsif number.length >= 10 && ga00 == "0"
      return nil
    elsif number[0] == "1" && number.length == 11
      parts = number.split("")
      parts.shift
      clean = parts.join("").delete("-.+ ()")
      return clean
    elsif number.length == 9 || number.length > 10 || number.match(/[a-zA-Z]/) || number.match(/[\W]/) || number[0] == "0" || number[0] == "1" || number =~ /^[2-9][0-9]{2}$/ && number[0] == "1"
      return nil
    else
      return number
    end
  end
end

p PhoneNumber.clean("12234567890")
