class CommunityShare < ActiveRecord::Base
  belongs_to :user
  has_many :harvests
  has_and_belongs_to_many :vegetables, through: :harvests



  def search_by_zip
    community_share = CommunityShare.find_by_zip_code(params[:zip_code])
  end

  #   def serializable_hash(options = nil)
  #   {id: id, name: name}
  # end 


end
