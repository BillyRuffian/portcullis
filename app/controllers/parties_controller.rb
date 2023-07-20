class PartiesController < ApplicationController
  include MembersConcern


  COMMONS = 1
  LORDS = 2

  def index
    parties_results = members_api.api_parties_get_active_house_get(COMMONS)
    @parties = parties_results.items.map(&:value)
  end

  def show
  end
end
