class AddZipCodeToCommunityShare < ActiveRecord::Migration
  def change
    add_column :community_shares, :zip_code, :integer
  end
end
