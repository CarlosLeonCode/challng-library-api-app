class UpdateBookStatus
  include Interactor

  def call
    status_changes = context.loan.previous_changes[:status]
    if status_changes.present? && status_changes.first == "pending_deliver" && status_changes.last == "delivered"
      context.loan.book.update(status: :available)
    end
  end
end
