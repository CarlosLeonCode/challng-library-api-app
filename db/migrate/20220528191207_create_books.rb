class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :code
      t.string :name
      t.string :genre
      t.string :author
      t.integer :status, limit: 2

      t.timestamps
    end
  end
end
