module CommonsDivisionsConcern
  extend ActiveSupport::Concern 

  def commons_divisions_api
    @commons_divisions_api ||= ParliamentCommonsVotes::DivisionsApi.new
  end
end