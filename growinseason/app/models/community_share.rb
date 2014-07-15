class CommunityShare < ActiveRecord::Base
  belongs_to :user
  has_many :harvests
  has_and_belongs_to_many :vegetables, through: :harvests



    def serializable_hash(options = nil)
    {id: id, name: name}
  end 
end
