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


$debug = 1
print "debug\n" if $debug

$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false 
print "3 -- Value is set\n" unless $var

if $var == false
  puts "2 so bang nhau #{$debug} #{$var}"
end