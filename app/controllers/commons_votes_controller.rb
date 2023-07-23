class CommonsVotesController < ApplicationController
  include MembersConcern

  def index
    @page = params[:page].to_i || 1
    @page = 1 if @page <= 0
    results = members_api.api_members_id_voting_get(params[:member_id], COMMONS, page: @page)
    @votes = results
               .items
               .map(&:value)
               .group_by(&:date)
    @total_results = results.total_results
    @per_page = results.take
    @total_pages = (@total_results.to_f / @per_page.to_f).ceil
  end
end
