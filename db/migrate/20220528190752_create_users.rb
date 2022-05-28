class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :doc_id
      t.integer :genre, limit: 2
      t.integer :status, limit: 2

      t.timestamps
    end
  end
end
