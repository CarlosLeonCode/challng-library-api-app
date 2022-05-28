class Loan < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_presence_of(:status)
  enum status: { pending_deliver: 0, delivered: 1 }
end
