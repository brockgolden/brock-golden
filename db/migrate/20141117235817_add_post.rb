class AddPost < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.string :content
  		t.string :image_url
  		t.datetime :published_date
  		t.timestamps
  	end
  end
end
