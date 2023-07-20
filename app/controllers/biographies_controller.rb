class BiographiesController < ApplicationController
  include MembersConcern

  def show
    @biography = BiographyDecorator.new(members_api.api_members_id_biography_get(member_params[:member_id]).value)
  end

  private

  def member_params
    params.permit(:member_id)
  end
end
