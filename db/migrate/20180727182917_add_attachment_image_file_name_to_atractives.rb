class AddAttachmentImageFileNameToAtractives < ActiveRecord::Migration[5.2]
  def self.up
    change_table :atractives do |t|
      t.attachment :image_file_name
    end
  end

  def self.down
    remove_attachment :atractives, :image_file_name
  end
end
