class MembersController < ApplicationController
  include MembersConcern

  def show
    @member = MemberDecorator.new(members_api.api_members_id_get(member_params[:id]).value)
  end

  def interests
  end

  def votes
  end

  def contributions
  end

  private

  def member_params
    params.permit(:id)
  end
  
end
