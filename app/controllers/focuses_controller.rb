class FocusesController < ApplicationController
  include MembersConcern

  def show
    @focus_areas = members_api.api_members_id_focus_get(params[:member_id]).value
  end
end
