# khai bao 1 Hash
hash = { name: "Dat", age: 23, adr: "Ha noi", phone: "0359360625" }
p hash.class

name = "Dat"
age = 23
adr = "Ha Noi"
phone = "0359360625"
p hash1 = { name:, age:, adr:, phone: }

def some_method(hash)
  p hash
end

some_method ({ name: "Dat", age: 23, adr: "Ha noi", phone: "0359360625" })

hash = { name: "Dat", age: 23, adr: "Ha noi", phone: "0359360625" }
hash[:Zodiac] = "Dragon"
hash[:age] = 18
p hash
p hash.delete(:age) #  xoa key duoc chi dinh
p hash  #

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def ==(other)
    self.class === other &&
      other.author == @author &&
      other.title == @title
  end

  alias eql? ==

  def hash
    @author.hash ^ @title.hash # XOR
  end
end

book1 = Book.new "matz", "Ruby in a Nutshell"
book2 = Book.new "matz", "Ruby in a Nutshell"

reviews = {}

p reviews[book1] = "Great reference!"
p reviews[book2] = "Nice and compact!"

p reviews.length #=> 1
