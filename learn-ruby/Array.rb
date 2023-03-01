# class MyClass
#   puts 'Hello!'
#   result = class MyClass
#   self
#   end
# end
# MyClass.new

# class Class
#     alias old_new new
#     def new(*args)
#       print "Creating a new ", self.name, "\n"
#       old_new(*args)
#     end
#   end
  
#   class Name
#   end
  
#   n = Name.new
# Conga = Class.new do
#     def method1
#         "hello"
#     end
#     def method2
#         "bye"
        
#     end
    
# end
# a=Conga.new
# a.method1
# a.method2

# class Animal
#     def initialize(name)
#         @name=name

#     end
#     def show
#         puts "is a #{@name}"
        
#     end
# end #By default SQL String limit 255 character 
# #Ex:- :limit => 40
# class Dog < Animal # lop Dog ke thua lop Animal
#   def speak
#     puts "day la con #{@name}"
    
#   end
  
# end

# al=Dog.new("Con Ga")
# # al.speak
# class Student
#   def info
#       @name = "I'm Ruby"
#   end
# end
# st=Student.new # st la 1 object cua class Student
# puts st.methods.grep /info/
# puts st.methods.sort

# a=[1,2,3,4,5,6,7,8,7,6,5,4,3,2,1]
# puts a.uniq {|x|x.even? i:0 }

a = [:foo, 'bar', :bam, 2,2,5,5,6,'ga','con']
p a.map{|i|i.class}
puts a[3].to_s # >> Get an integer to get that element's position
puts a.at(3).to_s #>> Get an integer to get that element's position
p    a.index('ga')
puts a.fetch(3,nil).to_s #>> find and report too many elements in the array
puts a.first #=> returns the first elements in the array
puts a.last  #=> returns the last elements in the array
puts a.take(4).to_s # returns the number of elements passed
puts a.drop(5).to_s # returns array after previos elements are dropped
puts a.empty?() # To check whether an array contains any elements at all(if yes return true no return false)
puts a.include?(:foo)# to check whether a particular item is included in the array
puts a.pop # removes the last element in an array and returns it
puts a.delete(5) #To delete a particular element anywhere in an array
puts a.delete_at(4).to_s# delete an element at a particular index
array = [[1, 2, 3], [[4, 5], 6], [7, 8, 9]]
puts array.to_s
puts array.map { |sub_array| sub_array.is_a?(Array) ? sub_array.flatten.reject { |item| item == 5 } : sub_array }.to_s
# a.map{|arry| arry.each_with_index{|arry,i| puts "#{arry} #{i}"}}
arr = [1, 2, 3, 4, 5, 6]
puts arr.select {|a| a > 3}.to_s       #=> [4, 5, 6] lay cac gia tri lon hon 3
puts arr.reject {|a| a > 3}.to_s       #=> [1, 2, 3] lay cac gia tri nho hon hoac bang 3
puts arr.drop_while {|a| a < 3}.to_s   #=> [3, 4, 5, 6] lay cac gia tri lon hoac bang 3
puts arr.to_s                          #=> [1, 2, 3, 4, 5, 6]

p arr.delete_if {|a| a < 4}   #=> [4, 5, 6] xoa cac gia tri duoc so sanh bang true
p arr                         #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
# p arr.keep_if {|a| a < 4}   #=> [1, 2, 3] giu cac gia tri dc so sanh bang true
# p arr                       #=> [1, 2, 3]
p arr.fill("x",3,2)# thay the phan tu thanh phan tu khac

puts a.methods.sort
array = [[1, 2, 3], [[4, 5], 6], [7, 8, 9]]
p array.map{|i|i.class}
p array.flatten(1)
p array.index{|i |i==[1,2,3]}
array.each {|i| puts i }.inspect

a = [ 1, 2, 3 ]
b = [ 3, 4, 5 ]
c = [ 5, 6, 7 ]
a.intersect?(b)   #=> xem 2 mang co phan tu chung khong >>true
a.intersect?(c)   # >>false

[0, 1, 2].none? {|element| element > 3 } # => khong co phan tu nao lon hon 3 tra ve true
[0, 1, 2].none? {|element| element > 1 } # => co phan tu lon hon 1 tra ve false
#=> co phan tu thi bang false khong co tra ve true
[0, 1, 2].one? {|element| element > 0 } # => false qua 2 phan tu dap dung
[0, 1, 2].one? {|element| element > 1 } # => true chi co 1 va duy nhat phan tu dap ung
[0, 1, 2].one? {|element| element > 2 } # => false khong co phan tu nao dap ung

a = [0, 1, 2,3]
a.permutation(3) {|permutation| p permutation }



def hanoi(n, a, b, c)
  if n == 1
    puts "Chuyển đĩa 1 từ cột #{a} sang cột #{c}"
  else
    hanoi(n-1, a, c, b)
    puts "Chuyển đĩa #{n} từ cột #{a} sang cột #{c}"
    hanoi(n-1, b, a, c)
  end
end

puts "Nhập số đĩa: "
n = gets.chomp.to_i

hanoi(n, 'A', 'B', 'C')

p even_numbers = [1, 2, 3, 5, 4].map{|element| element if element.even?}
p [1, 2, 3, 4, 5].select(&:even?)
p [1, 2, 3, 4, 5].detect(&:even?)

days = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 p days.map{|day| day.odd? ? 
  {task: 'dishes', minutes: Random.rand(20)} :
  {task: 'sweep', minutes: Random.rand(20)}}
  .select{|task| task[:minutes] < 30}
  .reject{|task| task[:minutes] < 5}
  .reduce(0) {|sum, task| sum + task[:minutes]}
p days.sample


p days.slice(1,5)

floor = [["Một", "Hai", "Ba"],
         ["Bốn", "Năm", "Sáu"],
         ["Bảy", "Tám", "Chín"]]

number = 0
tang = catch(:found) do
	floor.each do |row|
  	row.each do |tile|
      number += 1
    	throw(:found, tile) if tile == "Năm"
  	end
	end
end
puts tang