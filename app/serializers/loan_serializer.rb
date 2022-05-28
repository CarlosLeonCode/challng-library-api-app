class LoanSerializer < ActiveModel::Serializer
  belongs_to :book
  belongs_to :user
  attributes :id, :status
end
