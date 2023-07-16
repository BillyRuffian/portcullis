class PartiesController < ApplicationController
  COMMONS = 1
  LORDS = 2

  def index
    api = ParliamentMembers::PartiesApi.new
    parties_results = api.api_parties_get_active_house_get(COMMONS)
    @parties = parties_results.items.map(&:value)
  end

  def show
  end
end
