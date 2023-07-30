class OralContributionsController < ApplicationController
  include MembersConcern

  def index
    @page = params[:page].to_i || 1
    @page = 1 if @page <= 0
    results = members_api.api_members_id_contribution_summary_get(params[:member_id], page: @page)
    @contributions = results
                      .items
                      .map(&:value)
    @total_results = results.total_results
    @per_page = results.take
    @total_pages = (@total_results.to_f / @per_page.to_f).ceil
  end

  def show
    @member_id = params[:member_id]
    @page = params[:page] || 1
    @debate = HTTP
                .get("https://hansard-api.parliament.uk/Debates/Debate/#{params[:id]}.json")
                .to_s
                .then{ |r| JSON.parse(r) }
  end
end
