class AddUserIdToArtistuploads < ActiveRecord::Migration
  def change
    add_column :artistuploads, :user_id, :integer
  end
end
