begin
  a = 1 / 0
  puts a
rescue ZeroDivisionError => exception
  puts "Exception Class #{exception.class.name}"
  puts "Exception Message #{exception.message}"
  puts "Exception Backtrace #{exception.backtrace}"
ensure
end

class PermissionDeniedError < StandardError
  attr_reader :action

  def initialize(message, action)
    super(message)
    @action = action
  end
end

puts PermissionDeniedError.new("Permission Denied", :delete)

# begin
#   do_something()
# rescue Errno::ETIMEDOUT, Errno::ECONNREFUSED => e
# end

p RuntimeError.ancestors.include? Exception

p NoMethodError.ancestors.include? Exception

a = raise "an error occurred"
puts a
begin
  raise RuntimeError, "an error occurred"
rescue RuntimeError => exception
  puts "#{exception.message}: #{exception.class}"
end

begin
  3 / 0
rescue StandardError => exception # loi chia cho khong
  puts " #{exception.class}:: #{exception.message}"
end

begin
  "Day la chuoi".odd?
rescue NoMethodError => e # khong the dung phuong thuc 'odd?' cho  chuoi
  puts "#{e.class}: #{e.message}"
end

begin
  "Day la chuoi".odd?
rescue NoMethodError => e
  puts "#{$!.class}: #{$!.message}" # $! Va $@ chi ton tai trong khoi begin khai bao len ngoai tra ve la nil
  # $@.each { |loc| puts loc }
  e.backtrace.each { |loc| puts loc }
end

begin
  person = { name: "John", age: 22 }
  person.foo
rescue StandardError => e
  puts "#{e.class}: #{e.message}"
end

i = 0

begin
  i += 1
  puts "retry ##{i}"
  raise RuntimeError
rescue RuntimeError => e
  retry if i < 3
end
