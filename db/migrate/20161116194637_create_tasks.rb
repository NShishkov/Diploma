class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :client, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :model, foreign_key: true
      t.string :transmission
      t.string :vin
      t.datetime :date_start
      t.datetime :date_end
      t.decimal :price
      t.text :info
      t.string :status
      t.references :contractor, foreign_key: true

      t.timestamps
    end
  end
end
