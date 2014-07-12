class AddStateToCommunityShare < ActiveRecord::Migration
  def change
    add_column :community_shares, :state, :string
  end
end
