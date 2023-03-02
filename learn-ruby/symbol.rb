puts :pending.object_id

require "benchmark"

str = Benchmark.measure do
  10_000_000.times do
    "test" == "test"
  end
end.total

sym = Benchmark.measure do
  10_000_000.times do
    :test == :test
  end
end.total

puts "String: " + str.to_s
puts "symbol: " + sym.to_s

class ClassName
  attr_accessor :name
end

obj = ClassName.new
puts obj.name = "Test"

arr = ["1", "2", "3", "4"]
arr[2] = "7"
puts arr

# khai bao hash
hash = { first_name: "Dat" }
hash.clear
# them key va value
hash[:age] = 23;  # them vaof hash cac key value moi
hash[:first_name] = "hu" # thay doi value va key dc chi dinh
puts hash.values #tra ve mamg[] ra danh sach values
puts hash.keys # tra ve mang[] danh sach keys
puts hash.length # in ra so luong key value
puts hash.assoc(:age) # in ra cac cap key value
puts hash.delete(:age) # xoa cap key value
hash[:age] = 23
puts hash.delete(:ga) { |x| "ko tim thay key #{x} de xoa" } # neu tim thay key thi xoa nguoc lai in ra thong bao
puts hash.delete_if { |key, value| key >= :age }
hash = { first_name: "Dat" }
hash[:age] = 23;  # them vaof hash cac key value moi
hash[:first_name] = "hu"
hash.each { |key, value| puts "Ten: #{key}\ntuoi #{value}" } # vong lap kiem tra tung key value in ra man hinh
puts hash.empty? # kiem tra hash co cap key value ko
puts hash.has_key?(:con) #kiem tra hash co key tuong ung hay ko
puts hash.value?("hu") # kiem tra hash co value nao tuong ung hay ko
puts hash.include?(:age) #kiem tra hash co key tuong ung hay ko giong voi has_key?
puts hash.key("hu") # lay key thong qua value
hash2 = { adrr: "ha noi", age: "22", compaly: "tomosia" }
new_hash = hash.merge(hash2) #gop 2 hash tao ra 1 hash moi neu key giong nhau nhan ky hash2
puts new_hash
puts new_hash.select { |k, v| v > "22" } # tra ve hash moi co cac value>"22"
puts new_hash.shift # in ra man hinh cap key-value dau tien bi loai ra khoi hash
puts new_hash.to_a # chuyen hash thanh array []

def group_by_owners(files)

  # #  return files.group_by { |key, value| value }.transform_values { |values| values.map(&:first) }
  return files.each_with_object({}) { |(key, value), hash| (hash[value] ||= []) << key }
end

#  do #|key,value|
#    if !arr[value]
#        arr[value]     end
#   return arr[value]<<key
#  end

files = {
  "Input.txt" => "Randy",
  "Code.py" => "Stan",
  "Output.txt" => "Randy",
}
puts group_by_owners(files)
arr = [1, 2, 3, 4, 5, 6, 6, 7, 8]
puts arr.sum / arr.length

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |x|
  puts "bang x #{x}"
  arr.each do |i|
    puts "#{x} x #{i} = #{x * i}"
  end
end

class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end

i = ArrayIterator.new("abc")
while i.has_next?
  puts("item: #{i.next_item.chr}")
end

def unique_names(names1, names2)
  return names1 | names2
end

names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]
puts(unique_names(names1, names2)) # should print Ava, Emma, Olivia, Sophia

e = [["f1", "2"]].chain({ f4: "5" })
puts e.to_s

e = (0..10).chunk { |i| (i / 2).floor } # => #<Enumerator: ...>
# The enumerator elements.
puts "aaaaa", e.next # => [0, [0, 1, 2]]
puts "aaaaa", e.next # => [1, [3, 4, 5]]
puts "aaaaa", e.next # => [2, [6, 7, 8]]
puts "aaaaa", e.next # => [3, [9, 10]]

# Get sorted words from a web page.
url = "./Note-ruby.txt"
words = URI::open(url).readlines
# Make chunks, one for each letter.
e = words.chunk { |word| word.upcase[0] } # => #<Enumerator: ...>
# Display 'A' through 'F'.
e.each { |c, words| puts [c, words.length]; break if c == "F" }

pattern = /http/
open(filename) { |f|
  f.chunk { |line| line =~ pattern ? :_alone : true }.each { |key, lines|
    pp lines
  }
}

module MathUtils
  def self.average(a, b)
    return a + b / 2.to_f
  end
end

puts MathUtils.average(2, 1)
array = [2, 3, 4, 5, 6]

array.each_with_index do |number, index|
  puts "Element #{index} is #{number}"
end
