class ContactController < ApplicationController
  def index
    user = find(params[:user_id])
    user.contacts + user.shared_contacts
  end
end
