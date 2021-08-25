class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.timestamps
      t.integer :votes, default: 0, null: false
    end
  end
end
