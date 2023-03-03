class Person # dinh nghia 1 lop
  attr_accessor :name, :age, :adr, :phone

  def initialize(name, age, adr, phone) # phuong thuc khoi tao
    @name = name
    @age = age
    @adr = adr
    @phone = phone
  end

  def get_name #phuong thuc truy cap (accessor methods)
    @name
  end

  def get_age #phuong thuc truy cap (accessor methods)
    @age
  end

  def get_adr #phuong thuc truy cap (accessor methods)
    @adr
  end

  def get_phone #phuong thuc truy cap (accessor methods)
    @phone
  end

  private :get_name, :get_age, :get_adr, :get_phone # private chi truy cap rieng tu dc chia se

  def set_name=(value) # thiet lap phuong thuc (setter method)
    @name = value
  end

  def set_age=(value) # thiet lap phuong thuc (setter method)
    @age = value
  end

  def set_adr=(value) # thiet lap phuong thuc (setter method)
    @adr = value
  end

  def set_phone=(value) # thiet lap phuong thuc (setter method)
    @phone = value
  end

  def get_show # instance method hanh dong cu the co tra ve ket qua
    puts "Toi ten la #{get_name} nam nay toi #{get_age} nha o #{get_adr} SDT toi #{get_phone}"
  end

  def get_show1 # instance method
    puts "Toi ten la #{@name} nam nay toi #{@age} nha o #{@adr} SDT toi #{@phone}"
  end

  protected :get_show1 # chia se trong lop cha va cac lop con ko chia se ben ngoai
end

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
