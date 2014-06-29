class CreateChobits < ActiveRecord::Migration
  def change
    create_table :chobits do |t|
      t.string :msg
      t.boolean :fav

      t.timestamps
    end
  end
end
