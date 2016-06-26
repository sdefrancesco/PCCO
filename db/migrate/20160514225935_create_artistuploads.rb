class CreateArtistuploads < ActiveRecord::Migration
  def change
    create_table :artistuploads do |t|
      t.string :title
      t.string :inspiration
      t.text :description

      t.timestamps null: false
    end
  end
end
