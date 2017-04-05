class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, :null => false, :limit => 64

      t.timestamps
    end
  end
end
