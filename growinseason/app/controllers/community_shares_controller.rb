class CommunitySharesController < ApplicationController
  before_action :authenticate_user!
  respond_to :json
  protect_from_forgery except: [:update, :create]
  include CommunitySharesHelper

    #      community_sharesGET    /community_shares(.:format)          community_shares#index
    #                      POST   /community_shares(.:format)          community_shares#create
    #  new_community_share GET    /community_shares/new(.:format)      community_shares#new
    # edit_community_share GET    /community_shares/:id/edit(.:format) community_shares#edit
    #      community_share GET    /community_shares/:id(.:format)      community_shares#show
    #                      PATCH  /community_shares/:id(.:format)      community_shares#update
    #                      PUT    /community_shares/:id(.:format)      community_shares#update
    #                      DELETE /community_shares/:id(.:format)      community_shares#destroy

  def index
    @recipes = Recipe.retrieve_recipes
    community_shares = CommunityShare.all
    respond_with community_shares
  end

  def create
    community_share = CommunityShare.create(community_share_params)
    respond_with community_share
  end

  def destroy
    community_share = CommunityShare.find(params[:id])
    community_share.destroy
    respond_with community_share
  end

  def show
    community_share = CommunityShare.create(community_share_params)
    respond_with community_share
  end



  def update
    community_share = CommunityShare.find(params[:id])
    community_share.update(communty_share_params)
    respond_with community_share
  end


  private 
  
  def community_share_params
    params.require(:community_share).permit(:name)
  end

end
