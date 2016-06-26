class AddAttachmentImageToArtistuploads < ActiveRecord::Migration
  def self.up
    change_table :artistuploads do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :artistuploads, :image
  end
end
