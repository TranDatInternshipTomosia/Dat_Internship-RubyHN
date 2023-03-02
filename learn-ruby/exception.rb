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

begin
  do_something()
rescue Errno::ETIMEDOUT, Errno::ECONNREFUSED => e
end
