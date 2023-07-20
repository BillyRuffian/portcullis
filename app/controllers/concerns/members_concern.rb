module MembersConcern
  extend ActiveSupport::Concern 

  def members_api
    @members_api ||= ParliamentMembers::MembersApi.new
  end
end