class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy #lien ket 1 n voi comment(nhieu commenttrong 1 user)

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
