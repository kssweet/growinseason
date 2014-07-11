class CreateCommunityShares < ActiveRecord::Migration
  def change
    create_table :community_shares do |t|
      t.string :name
      t.string :address
      t.string :blurb
      t.integer :user_id

      t.timestamps
    end
  end
end
