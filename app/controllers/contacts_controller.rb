class ContactsController < ApplicationController
  def show
    api = ParliamentMembers::MembersApi.new
    @contacts = api.api_members_id_contact_get(member_params[:member_id]).value
  end

  private

  def member_params
    params.permit(:member_id)
  end
end
