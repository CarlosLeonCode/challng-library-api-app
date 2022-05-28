class BookSerializer < ActiveModel::Serializer
  attributes :code, :name, :genre, :author, :status
end
