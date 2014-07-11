class Harvest < ActiveRecord::Base
  belongs_to :vegetable
  belongs_to :community_share
end
