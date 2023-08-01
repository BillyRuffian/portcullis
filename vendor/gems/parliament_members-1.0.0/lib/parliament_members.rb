=begin
#Members API

#An API which retrieves Members data.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'parliament_members/api_client'
require 'parliament_members/api_error'
require 'parliament_members/version'
require 'parliament_members/configuration'

# Models
require 'parliament_members/models/answering_body'
require 'parliament_members/models/biography_experience'
require 'parliament_members/models/biography_experience_list_item'
require 'parliament_members/models/biography_item'
require 'parliament_members/models/constituency'
require 'parliament_members/models/constituency_item'
require 'parliament_members/models/constituency_members_service_search_result'
require 'parliament_members/models/constituency_representation'
require 'parliament_members/models/constituency_representation_list_item'
require 'parliament_members/models/contact_information'
require 'parliament_members/models/contact_information_list_item'
require 'parliament_members/models/debate_contribution'
require 'parliament_members/models/debate_contribution_item'
require 'parliament_members/models/debate_contribution_members_service_search_result'
require 'parliament_members/models/early_day_motion'
require 'parliament_members/models/early_day_motion_item'
require 'parliament_members/models/early_day_motion_members_service_search_result'
require 'parliament_members/models/election_candidate'
require 'parliament_members/models/election_result'
require 'parliament_members/models/election_result_item'
require 'parliament_members/models/election_result_list_item'
require 'parliament_members/models/generic_reference_data'
require 'parliament_members/models/government_department'
require 'parliament_members/models/government_opposition_post'
require 'parliament_members/models/government_opposition_post_holder'
require 'parliament_members/models/government_opposition_post_item'
require 'parliament_members/models/government_type'
require 'parliament_members/models/grouped_question'
require 'parliament_members/models/house'
require 'parliament_members/models/house_membership'
require 'parliament_members/models/house_membership_status'
require 'parliament_members/models/link'
require 'parliament_members/models/location'
require 'parliament_members/models/location_context'
require 'parliament_members/models/location_item'
require 'parliament_members/models/location_type'
require 'parliament_members/models/lords_by_type'
require 'parliament_members/models/lords_by_type_item'
require 'parliament_members/models/lords_by_type_members_service_search_result'
require 'parliament_members/models/member'
require 'parliament_members/models/member_biography'
require 'parliament_members/models/member_biography_item'
require 'parliament_members/models/member_focus'
require 'parliament_members/models/member_focus_list_item'
require 'parliament_members/models/member_history'
require 'parliament_members/models/member_history_item'
require 'parliament_members/models/member_item'
require 'parliament_members/models/member_members_service_search_result'
require 'parliament_members/models/member_name'
require 'parliament_members/models/member_party'
require 'parliament_members/models/member_status'
require 'parliament_members/models/members_interests'
require 'parliament_members/models/members_interests_item'
require 'parliament_members/models/members_interests_members_service_search_result'
require 'parliament_members/models/members_staff'
require 'parliament_members/models/members_staff_item'
require 'parliament_members/models/members_staff_members_service_search_result'
require 'parliament_members/models/party'
require 'parliament_members/models/party_item'
require 'parliament_members/models/party_members_service_search_result'
require 'parliament_members/models/party_seat_count'
require 'parliament_members/models/party_seat_count_item'
require 'parliament_members/models/party_seat_count_members_service_search_result'
require 'parliament_members/models/portrait_crop_enum'
require 'parliament_members/models/post_type'
require 'parliament_members/models/registered_interest'
require 'parliament_members/models/registered_interest_category'
require 'parliament_members/models/registered_interest_category_list_item'
require 'parliament_members/models/staff'
require 'parliament_members/models/staff_list_item'
require 'parliament_members/models/string_item'
require 'parliament_members/models/vote'
require 'parliament_members/models/vote_item'
require 'parliament_members/models/vote_members_service_search_result'
require 'parliament_members/models/written_question'
require 'parliament_members/models/written_question_item'
require 'parliament_members/models/written_question_members_service_search_result'

# APIs
require 'parliament_members/api/location_api'
require 'parliament_members/api/lords_interests_api'
require 'parliament_members/api/members_api'
require 'parliament_members/api/parties_api'
require 'parliament_members/api/posts_api'
require 'parliament_members/api/reference_api'

module ParliamentMembers
  class << self
    # Customize default settings for the SDK using block.
    #   ParliamentMembers.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
