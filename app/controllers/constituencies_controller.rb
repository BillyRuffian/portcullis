class ConstituenciesController < ApplicationController
  include LocationsConcern

  def show
    task = Async do 
      @constituency = Constituency.includes(election_results: :party).find_by_constituency_ref(params[:id])
      @election_results = @constituency.latest_election
      @election_history = @constituency.election_results
    end
    task.wait
  end

  def geometry
    @constituency = Constituency.find_by_constituency_ref(params[:id])
    render json: JSON.parse(@constituency.geometry)
  end
end
