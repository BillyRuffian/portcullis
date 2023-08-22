# This is the controller for the members votes page, the turboframe

class CommonsVotesController < ApplicationController
  include MembersConcern

  def index
    member = Member.find_by_member_ref(params[:member_id])
    @page = params[:page].to_i || 1
    @page = 1 if @page <= 0

    @divisions = CommonsDivision.page(member, @page).group_by(&:division_date)

    # results = members_api.api_members_id_voting_get(params[:member_id], COMMONS, page: @page)
    # @votes = results
    #            .items
    #            .map(&:value)
    #            .group_by(&:date)

    @total_results = member.commons_divisions.count
    @per_page = CommonsDivision::PAGE_SIZE
    @total_pages = (@total_results.to_f / @per_page.to_f).ceil
  end
end
