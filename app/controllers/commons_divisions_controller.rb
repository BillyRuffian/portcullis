class CommonsDivisionsController < ApplicationController
  def show
    @division = CommonsDivision.includes(commons_votes: { member: :party} ).find_by_division_ref(params[:id])
  end
end
