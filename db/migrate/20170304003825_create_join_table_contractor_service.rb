class CreateJoinTableContractorService < ActiveRecord::Migration[5.0]
  def change
    create_join_table :contractors, :services do |t|
       t.index [:contractor_id, :service_id]
      # t.index [:service_id, :contractor_id]
    end
  end
end
