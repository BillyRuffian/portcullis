class MemberInterestsController < ApplicationController
  include MembersConcern

  def show
    @interests = members_api.api_members_id_registered_interests_get(params[:member_id]).value
  end
end
