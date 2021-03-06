class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :status, limit: 2

      t.timestamps
    end
  end
end
