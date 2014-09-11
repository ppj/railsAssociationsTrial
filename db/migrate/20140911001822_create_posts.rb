class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, index: true  # this line adds an integer column called `user_id`

      t.timestamps
    end
  end
end
