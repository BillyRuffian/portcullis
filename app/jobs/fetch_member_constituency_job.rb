class FetchMemberConstituencyJob < ApplicationJob
  include LocationsConcern

  queue_as :default

  def perform(member, constituency_ref)
    return if member.constituency.present? && member.constituency.updated_at > 1.week.ago

    constituency_data = nil
    summary = nil 
    geometry = nil 

    task = Async do 
      begin
        constituency_data = locations_api.api_location_constituency_id_get(constituency_ref).value
      rescue ParliamentMembers::ApiError
        return 
      end

      begin
        summary = locations_api.api_location_constituency_id_synopsis_get(constituency_ref).value
      rescue ParliamentMembers::ApiError
      end

      begin
        geometry = locations_api.api_location_constituency_id_geometry_get(constituency_ref).value
      rescue ParliamentMembers::ApiError
      end
    end
    task.wait

    constituency = Constituency.new(
      constituency_ref: constituency_data.id,
      name: constituency_data.name,
      start_date: constituency_data.start_date,
      end_date: constituency_data.end_date,
      summary:,
      geometry:,
      member:
    )

    constituency.save
  end
end
