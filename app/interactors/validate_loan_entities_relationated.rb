class ValidateLoanEntitiesRelationated
  include Interactor

  def call()
    is_book_available()
    is_user_active()
  end

  private

  def is_book_available
    book = Book.find_by_code(context.loan.book_id)
    raise StandardError.new "Book is not available." if book.unavailable?
  end

  def is_user_active
    user = User.find_by_doc_id(context.loan.user_id)
    raise StandardError.new "User is not active." if user.inactive?
  end
end
