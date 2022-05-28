class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :doc_id, :genre, :status
end
