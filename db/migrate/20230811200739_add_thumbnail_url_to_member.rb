class AddThumbnailUrlToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :thumbnail_url, :string
  end
end
