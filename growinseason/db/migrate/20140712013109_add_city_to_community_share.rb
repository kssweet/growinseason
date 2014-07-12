class AddCityToCommunityShare < ActiveRecord::Migration
  def change
    add_column :community_shares, :city, :string
  end
end
