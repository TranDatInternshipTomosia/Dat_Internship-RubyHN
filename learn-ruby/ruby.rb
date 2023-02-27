# module One
#   class Fred
#   end
#   $f1 = :Fred
# end
# module Two
#   Fred = 1
#   $f2 = :Fred
# end
# def Fred()
# end
# $f3 = :Fred
# puts $f1.object_id   #=> 2514190
# puts $f2.object_id   #=> 2514190
# puts $f3.object_id   #=> 2514190


# foo = 42

# puts defined? unpack  
# puts defined? puts(bar)   # => nil (bar is not defined here)_    
# puts defined? puts        # => "method"
# print "Enter a number: "
 
# num = gets.to_i
 
# if num < 0
#     puts "#{num} is negative"
# elsif num == 0 
#     puts "#{num} is zero"
# elsif num > 0
#    puts "#{num} is positive"
# end


# $debug = 1
# print "debug\n" if $debug

# $var =  1
# print "1 -- Value is set\n" if $var
# print "2 -- Value is set\n" unless $var

# $var = false 
# print "3 -- Value is set\n" unless $var

# if $var == false
#   puts "2 so bang nhau #{$debug} #{$var}"
# end


# puts "Sammy".chomp("my")    # "Sam"
# puts "This string has a newline\n".chomp   # "This string has a newline
# puts "Sammy".chomp     # "Sammy"

# text = "Sammy has a balloon"
# indices = text.chars
#   .each_with_index
#   .select{|char, index| char == "a" }
#   .map{|pair| pair.last}

# print indices

# $name="hieu";
# class Person
#     def index
#     @last = "Tran";
#     $name = "dat";
#     @@dem="Viet";
#     end
#     def index2
#       puts @@dem
#     end
# end
# class AA
#   @say = "AA"
#   def initialize sth #init value cho biến @say
#     @say = sth
#   end

#   def self.say #class method kiểm tra biến @say
#     p defined? @say
#     p @say
#     p instance_variables
#     @say
#   end

#   def say_some_thing # instance method kiểm tra biến @say
#     puts @say.inspect
#     p defined? @say
#     @say_new = "new"
#     p instance_variables
#   end
  
#   def say_some_thing_2 # instance method khác để kiểm tra biến @say
#     puts self.class.say
#     p instance_variables
#   end
# end
# a1 = AA.new "BB";
# a1.say_some_thing_2 #cau 1
# a1.say_some_thing #cau 2
# a1.say_some_thing_2 #cau 3

# balloon = "Sammy has a balloon. The balloon has a ribbon"
# print balloon.gsub(/.(?=....)/, '#')

# str = "abcdeU" # khoi tao bien str
# str.each_char do |char| # su dung each_char duyet qua tung ky tu gan vao bien char
# puts char if ['E','U','O','A','I'].include? char.upcase # in ra cac ky tu trong bien char neu thuoc trong cac tu cho san hay ko roi in thuong cac chu do
# end

# ky_tu = ["a", "b", "c", "d", "e", "A", "B", "C", "D", "E"]
# puts ky_tu.map{|c| c.downcase}.join(",") #anh xa ky_tu sang c c.downcase cac ky tu in thuong va . join tao thanh chuoi ngan chac boi dau ,
#  puts "abcdef".count("a-c", "c-f")
#  str ="euuoaii"
#  	puts	 str.count("ui")
#    str = "Anna"
#    str.reverse 
   
#    puts "palindrome" if str.downcase == str.downcase.reverse

#   sentence = "June 27,June 26,June 25,June 24,June 23"
#    puts words = sentence.split(/,/,4)# /,/ lay da


# puts"#{$name}";
# Person.new.index
# Person.new.index2
# puts"#{$name}";



# class AA
#   @say = "AA"
#   def initialize sth #init value cho biến @say
#     @say = sth
#   end

#   def self.say #class method kiểm tra biến @say
#     p defined? @say
#     p @say
#     p instance_variables
#     @say
#   end

#   def say_some_thing # instance method kiểm tra biến @say
#     puts @say.inspect
#     p defined? @say
#     @say_new = "new"
#     p instance_variables
#   end
  
#   def say_some_thing_2 # instance method khác để kiểm tra biến @say
#     puts self.class.say
#     p instance_variables
#   end
# end
# a1 = AA.new "BB";
# a1.say_some_thing_2 #cau 1
# a1.say_some_thing #cau 2
# a1.say_some_thing_2 #cau 3

# balloon = "Sammy has a balloon. The balloon has a ribbon"
# print balloon.gsub(/.(?=....)/, '#')

# str = "abcdeU" # khoi tao bien str
# str.each_char do |char| # su dung each_char duyet qua tung ky tu gan vao bien char
# puts char if ['E','U','O','A','I'].include? char.upcase # in ra cac ky tu trong bien char neu thuoc trong cac tu cho san hay ko roi in thuong cac chu do
# end

# ky_tu = ["a", "b", "c", "d", "e", "A", "B", "C", "D", "E"]
# puts ky_tu.map{|c| c.downcase}.join(",") #anh xa ky_tu sang c c.downcase cac ky tu in thuong va . join tao thanh chuoi ngan chac boi dau ,
#  puts "abcdef".count("a-c", "c-f")
#  str ="euuoaii"
#  	puts	 str.count("ui")
#    str = "Anna"
#    str.reverse 
   
#    puts "palindrome" if str.downcase == str.downcase.reverse

#   sentence = "June 27,June 26,June 25,June 24,June 23"
#    puts words = sentence.split(/,/,4)# /,/ lay dau phay dau tien va chia 4 phan tu

#    a = "hello" 
# p a.insert(a.length-1, " world") 
# p a.class


# def hello
#   puts "Hello"
# end
 
# hello { puts "Code truyền vào method" }

# def hello
#   puts "Hello"
#   yield
#   puts "Goodbye"
# end
 
# hello { puts "Code truyền vào method" }

# def hello
#   puts "Hello"
#   return yield(['Phú','dat','Trab'], [22,23,24]) if block_given?
#   puts "Goodbye"
# end
 
# hello do |name, age|

# for i in 0..name.length-1 do
#   for j in i..age.length-1 do
#     puts "năm nay tôi #{age[j]} tuổi"
#   end
#   puts "Xin chào tôi là #{name[i]}"
# end
# end


# def hello1
#   value = yield
#   puts "Kết quả của yield là #{value}"
# end
 
# hello1 do
#   1 + 1
# end

# def hello2 &khoa
#   puts khoa
#   khoa.call
# end
 
# hello2 do
#   puts "#{1+1}"
# end
# def xinchao
# puts "Hello"
#   return yield if block_given?
#   puts "Goodbye"
# end
# xinchao

# sharks = ["Tiger", "Great White", "Hammerhead", "Angel"]
# sharks.first   # "Tiger"
# sharks.last    # "Angel"
# puts sharks

# def eager_fibonacci n
#   a = b = 1
#   result = []

#   loop do
#     break if result.size >= n
#     result << a
#     a, b = b, a + b
#   end
#  puts result
# end
# # str = "1 ,2,3,4,4,5,6 ga con"
# # puts str.max {|a,b| a.length <=> b.length}

# password = "secret"
# salt = "tran"
# encrypted_password = password.crypt(salt)
# puts encrypted_password #=> "abvVup4J4WTjg"



# # puts "hello".each_byte {|c| print c, ' ' }


# str ="hoc ruby co ban";

# if  str.count("o")>=2
#   puts str 
# else
#   puts "no"
# end
# if str!=str.reverse
#   puts "oke"
# else
#   puts "no"
  
# end

# def unique_char(str)
#   str.each_char do |char|
#     return char if str.count(char) ==1
#   end
#   return "NO"
# end
# puts unique_char("hello")   # output: "h"
# puts unique_char("hi")      # output: "h"
# puts unique_char("hello world")   # output: "h"
# puts unique_char("abccde")  # output: "a"
# puts unique_char("ababab")  # output: "NO"

# def check_number(num)
#   if num.match(/\d/)
#      return true
#   else
#     return false
#   end
# end
# puts check_number("asdsakd")
# puts check_number("sadasd22")


def check_na(str)

  str.each_char do |char| 
    return char if ['e','u','o','a','i'].include? char.downcase
  end
  return "ko co nguyen am nao"
end
puts check_na("asdsakdE")
puts check_na("sadasd22ue")