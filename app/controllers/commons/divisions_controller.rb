class Commons::DivisionsController < ApplicationController
  def index
    api = ParliamentCommonsVotes::DivisionsApi.new
    @division_dates = api
                       .divisions_search_divisions('json')
                       .group_by{ |division| division.date.to_date }
  end
end
