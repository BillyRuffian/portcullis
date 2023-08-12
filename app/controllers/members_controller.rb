class MembersController < ApplicationController
  include MembersConcern

  def show
    # @member = MemberDecorator.new(members_api.api_members_id_get(member_params[:id]).value)
    @member = Member.includes(:party).find_by_member_ref(params[:id])
  end

  def interests
  end

  def votes
  end

  def contributions
  end

  def search
    if params[:query].present?
      @members = Member.includes(:party).current.search(params[:query])
    else
      @members = []
    end

    if turbo_frame_request?
      render partial: 'search_results', locals: {members: @members}
    else
      render 'search'
    end
  end

  private

  def member_params
    params.permit(:id)
  end
  
end
