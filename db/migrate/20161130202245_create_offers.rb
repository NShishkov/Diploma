class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.decimal :price
      t.text :comment
      t.references :task, foreign_key: true
      t.references :contractor, foreign_key: true

      t.timestamps
    end
  end
end
