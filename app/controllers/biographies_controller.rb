class BiographiesController < ApplicationController
  def show
    api = ParliamentMembers::MembersApi.new
    @biography = BiographyDecorator.new(api.api_members_id_biography_get(member_params[:member_id]).value)
  end

  private

  def member_params
    params.permit(:member_id)
  end
end
