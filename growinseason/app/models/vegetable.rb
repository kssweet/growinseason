class Vegetable < ActiveRecord::Base
  belongs_to :harvests
  has_and_belongs_to_many :community_shares, :through => :harvests
end
