class AddStuffToRelationships < ActiveRecord::Migration
  def change
	add_column :relationships, :followed_id, :integer
	add_column :relationships, :follower_id, :integer
      add_index :relationships, :follower_id
      add_index :relationships, :followed_id
      add_index :relationships, [:follower_id, :followed_id], unique: true
  end
end
