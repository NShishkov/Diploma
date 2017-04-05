class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :task, foreign_key: true
      t.references :contractor, foreign_key: true
      t.references :client, foreign_key: true
      t.integer :rating
      t.text :advantages
      t.text :disadvantages
      t.text :comment

      t.timestamps
    end
  end
end
