class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.integer :initiator_github_id
      t.integer :recipient_github_id

      t.timestamps
    end
  end
end
