class CreateJoinTableHarvest < ActiveRecord::Migration
  def change
    create_join_table :community_shares, :vegetables do |t|
      # t.index [:community_share_id, :vegetable_id]
      # t.index [:vegetable_id, :community_share_id]
    end
  end
end
