class Candidate < ApplicationRecord
  belongs_to :election_result
  belongs_to :party
end
