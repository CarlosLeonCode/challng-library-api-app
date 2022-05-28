class Book < ApplicationRecord

    has_many :loans

    validates_presence_of(:code, :name, :genre, :author, :status)
    validates :code, uniqueness: true
    enum status: { available: 0, borrowed: 1, unavailable: 2 }
end
