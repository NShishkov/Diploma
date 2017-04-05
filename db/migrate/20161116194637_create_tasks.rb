class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :client, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :model, foreign_key: true
      t.string :transmission, :null => false, :limit => 2 
      t.string :vin, :null => false, :limit => 17
      t.datetime :date_start
      t.datetime :date_end
      t.decimal :price, :null => false
      t.text :info, :null => false
      t.string :status, :default => "Ожидает предложений"
      t.references :contractor, foreign_key: true

      t.timestamps
    end
  end
end
