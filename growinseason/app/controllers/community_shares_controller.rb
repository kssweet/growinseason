class CommunitySharesController < ApplicationController

  respond_to :json

  def index
    @csa = CommunityShare.all
    respond_with csa
  end

  def show
    # @csa = CommunityShare.find_by_zip_code(params[:zip_code])
    @csa = CommunityShare.all
    respond_with csa
  end

  def create
  end

  def update
  end

  def destroy
  end

  private 
  
  def csa_params
    params.require(:csa).permit(:name)
  end

end
