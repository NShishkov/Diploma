class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :surname, :null => false, :limit => 16 
      t.string :name, :null => false, :limit => 16 
      t.string :patronymic, :null => false, :limit => 16 
      t.string :phone_number, :null => false, :limit => 12, :unique => true
      t.float :rating, :null => false, :limit => 16, :default => 0.0

      t.timestamps
    end
  end
end
