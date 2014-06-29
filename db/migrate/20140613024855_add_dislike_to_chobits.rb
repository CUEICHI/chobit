class AddDislikeToChobits < ActiveRecord::Migration
  def change
    add_column :chobits, :dislike, :boolean
  end
end
