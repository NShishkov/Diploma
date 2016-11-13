class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.string :surname, :null => false, :limit => 16 
      t.string :name, :null => false, :limit => 16 
      t.string :patronymic, :null => false, :limit => 16 
      t.string :address, :null => false, :limit => 64 
      t.string :phone_number, :null => false, :limit => 12, :unique => true; 
      t.float :rating, :null => false, :default => 0.0
      t.text :info, :null => false 

      t.timestamps
    end
  end
end
