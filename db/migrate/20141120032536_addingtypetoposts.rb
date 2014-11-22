class Addingtypetoposts < ActiveRecord::Migration
  def change
  	add_column :posts, :blog, :boolean
  	add_column :posts, :articles, :boolean
  	add_column :posts, :music, :boolean
  end
end
