class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.references :brand, foreign_key: true
      t.string :name, :null => false, :limit => 32
      t.text :description, :null => false
      t.string :years_of_production, :null => false, :limit => 32

      t.timestamps
    end
  end
end
