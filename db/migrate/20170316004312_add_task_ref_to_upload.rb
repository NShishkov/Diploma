class AddTaskRefToUpload < ActiveRecord::Migration[5.0]
  def change
    add_reference :uploads, :task, foreign_key: true
  end
end
