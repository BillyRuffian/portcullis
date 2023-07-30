class ConstituenciesController < ApplicationController
  include LocationsConcern

  def show
    task = Async do 
      @constituency = locations_api.api_location_constituency_id_get(params[:id]).value
      @summary = locations_api.api_location_constituency_id_synopsis_get(params[:id]).value
      @election_results = locations_api.api_location_constituency_id_election_result_latest_get(params[:id]).value
      @election_history = locations_api.api_location_constituency_id_election_results_get(params[:id]).value
    end
    task.wait
  end

  def geometry
    render json: JSON.parse(locations_api.api_location_constituency_id_geometry_get(params[:id]).value)
  end
end
