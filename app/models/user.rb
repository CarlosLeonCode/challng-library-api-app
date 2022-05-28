class User < ApplicationRecord

    has_many :loans

    validates_presence_of(:name, :last_name, :doc_id, :genre, :status)
    validates :doc_id, uniqueness: true

    enum genre:  { male: 0, female: 1 }
    enum status: { active: 0, inactive: 1 }

    before_validation :set_defaults, on: :create

    scope :all_active, -> { where(status: :active) }

    private

    def set_defaults
        self.status = :active
    end
end
