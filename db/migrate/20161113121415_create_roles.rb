class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name, :null => false, :limit => 16
      t.index :name, :unique => true
      t.string :info


      t.timestamps
    end
  end
end
