class ConstituenciesController < ApplicationController
  include LocationsConcern

  def index
  end

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
    render json: JSON.parse(@constituency.geometry).merge( properties: {colour: "##{@constituency.party.background_hex}"} )
  end

  def geometries 
    constituencies = Constituency.active 
    render json: Constituency.active.map { |c| 
      JSON.parse(c.geometry).merge( properties: {colour: "##{c.party.background_hex}"} )
    }
  end
end
