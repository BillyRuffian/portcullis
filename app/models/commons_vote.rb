class CommonsVote < ApplicationRecord
  belongs_to :commons_division
  belongs_to :member

  enum :vote, { aye_teller: 1, no_teller: 2, aye: 3, no: 5, no_vote_recorded: 6 }
end
