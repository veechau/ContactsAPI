class ContactShareController < ApplicationController

  def create
    @contact_share = ContactShare.new(contact_share_params)
  end

  def destroy
    @contact_share = find_by(params[:id])
    ContactShare.delete(:id)

    render json: @contact_share
  end



  private

  def contact_share_params
    params[:contact_share].permit(:contact_id, :user_id)
  end
end
