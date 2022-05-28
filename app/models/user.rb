class User < ApplicationRecord

    has_many :loans

    validates_presence_of(:name, :last_name, :doc_id, :genre, :status)
    enum genre:  { male: 0, female: 1 }
    enum status: { active: 0, inactive: 1 }
end
