module Language
  refine Object do
  end

  module Classmethod
    refine Object do
    end

    def vietnamess
      puts "Xin Chao!"
    end

    $a = Module.nesting
  end

  def self.included(base)
    base.extend(Classmethod)
  end

  def fance
    puts "Bonjour!"
  end

  def england
    puts "Hello!"
  end
end

using Language
p Module.used_refinements

class User
  include Language #lay cac instance method
  # extend Language # lay cac class method
end

dat = User.new
# User.vietnamess
# puts dat.methods.sort
# puts Module.constants.first(55).sort
puts Language.constants

module Mod
  include Math
  CONST = 1
  refine Object do
  end
end

puts Mod.methods.sort
using Mod
puts Module.name

module Sample
  class Hello
    puts "Hello world!"
  end
end

Sample::Hello.new

# module TextContent
#   extend ActiveSupport::Concern

#   def word_count
#     body.split.count
#   end

#   module ClassMethods
#     def total_word_count
#       all.inject(0) { |total, a| total += a.word_count }
#     end
#   end

#   included do
#     has_one :moderator_approval, as: :content
#   end
# end

# class Article < ActiveRecord::Base
#   include TextContent
# end

# class Comment < ActiveRecord::Base
#   include TextContent
# end

# class User
#   attr_accessor :username, :password, :email, :address
#   attr_accessor :payment_processor_token, :subsription_plan_id

#   def authenticate!(password)
#   end

#   def charge_cc
#   end

#   def export_vcard
#   end
# end

# module Authentication
#   def self.authenticate!(user)
#   end
# end

# module Subscription
#   def self.charge(user)
#   end
# end

# module Contact
#   def self.export_vcard(user)
#   end
# end

class Interpreter
  def do_a() print "there, "; end
  def do_d() print "Hello "; end
  def do_e() print "!\n"; end
  def do_v() print "Dave"; end

  Dispatcher = {
    "a" => instance_method(:do_a),
    "d" => instance_method(:do_d),
    "e" => instance_method(:do_e),
    "v" => instance_method(:do_v),
  }

  def interpret(string)
    string.each_char { |b| Dispatcher[b].bind(self).call }
  end
end

interpreter = Interpreter.new
interpreter.interpret("daev")

class Cat
  attr_accessor :name, :age
  include Comparable

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def <=>(other)
    self.age <=> other.age
  end
end

puts Cat.new("Bob", 3)
puts Cat.new("Lucy", 7)

cong = Proc.new do |a, b|
  a + b
end
tru = Proc.new do |a, b|
  a - b
end
nhan = Proc.new do |a, b|
  a * b
end
chia = Proc.new do |a, b|
  a / b
end

def ctnc(name, a, b)
  puts "#{name.call(a, b)}"
end

puts ctnc(cong, 5, 4)

talk = ->(a, b) do
  puts "Hello #{a + b}"
end
talk.call

module Animal
  class Cat
    def speak
      print "Gau Gau"
    end
  end

  class Dog
    def speak
      print "Mew Mew"
    end
  end
end

dog = Animal::Cat.new #module :: class goi class trong module
meo = Animal::Dog.new

p dog.speak
p meo.speak
