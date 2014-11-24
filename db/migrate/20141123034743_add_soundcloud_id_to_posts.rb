class AddSoundcloudIdToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :soundcloud_id, :integer
  end
end
