class AddColumnToArtist < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :image, :string
  end
end
