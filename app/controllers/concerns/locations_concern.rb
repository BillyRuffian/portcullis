module LocationsConcern
  extend ActiveSupport::Concern 

  def locations_api
    @locations_api ||= ParliamentMembers::LocationApi.new
  end
end
