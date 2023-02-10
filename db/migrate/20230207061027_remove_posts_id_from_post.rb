class RemovePostsIdFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts ,:posts_id ,:integer
  end
end
