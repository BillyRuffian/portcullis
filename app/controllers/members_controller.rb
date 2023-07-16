class MembersController < ApplicationController
  def show
    api = ParliamentMembers::MembersApi.new
    @member = MemberDecorator.new(api.api_members_id_get(member_params[:id]).value)
  end

  private

  def member_params
    params.permit(:id)
  end
  
end
