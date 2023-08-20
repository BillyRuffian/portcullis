class WelcomeController < ApplicationController
  def index
    @meta = {
      members: Member.count,
      parties: Party.count,
      constituencies: Constituency.count,
      election_results: ElectionResult.count,
      candidates: Candidate.count,
      commons_divisions: CommonsDivision.count,
      commons_votes: CommonsVote.count
    }
  end
end
