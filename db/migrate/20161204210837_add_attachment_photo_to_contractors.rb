class AddAttachmentPhotoToContractors < ActiveRecord::Migration
  def self.up
    change_table :contractors do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :contractors, :photo
  end
end
