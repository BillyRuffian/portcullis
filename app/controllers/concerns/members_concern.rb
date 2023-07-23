module MembersConcern
  extend ActiveSupport::Concern 

  COMMONS = 1
  LORDS = 2

  def members_api
    @members_api ||= ParliamentMembers::MembersApi.new
  end
end