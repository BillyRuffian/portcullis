class ContactsController < ApplicationController
  include MembersConcern

  def show
    @contacts = members_api.api_members_id_contact_get(member_params[:member_id]).value
  end

  private

  def member_params
    params.permit(:member_id)
  end
end
