class User < ApplicationRecord
  # after_initialize do |user|
  #   puts "#{user} have initialized an object!"
  # end

  # after_find do |user|
  #   puts "#{user} have found an object!"
  # end
  before_validation { puts "1" }
  after_validation { puts "2" }
  # around_save { puts "4 " }
  before_create { puts "5" }
  # around_create { puts "6 " }
  after_create { puts "7 " }
  after_save { puts "8" }
  before_save {
    self.email = email.downcase
    puts 13
  }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  before_destroy { puts 9 }
  # around_destroy { puts 10 }
  after_destroy { puts 11 }
  after_commit { puts 12 }
end
