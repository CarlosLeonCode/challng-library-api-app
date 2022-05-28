class Loan < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_presence_of(:status)
  enum status: { pending_deliver: 0, delivered: 1 }

  before_validation :set_defaults, on: :create
  before_validation :match_user_book, on: [:create]
  before_validation :is_loan_possible, on: :create
  after_create :update_book_status
  

  private

  def set_defaults
    self.status = :pending_deliver
  end

  def match_user_book
    self.user_id = User.find_by_doc_id(self.user_id).id
    self.book_id = Book.find_by_code(self.book_id).id
  end
  
  def is_loan_possible
    loands = Loan.where(user_id: self.user_id, book_id: self.book_id, status: :pending_deliver)
    raise StandardError.new "This loan could not happend, already exist!" if loands.length > 0
  end

  def update_book_status
    Book.find(self.book_id).update!(status: :unavailable)
  end
end
