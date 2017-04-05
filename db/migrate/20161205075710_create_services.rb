class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :category, foreign_key: true
      t.string :name, :null => false, :limit => 64

      t.timestamps
    end
  end
end
