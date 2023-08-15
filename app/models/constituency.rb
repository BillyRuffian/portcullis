class Constituency < ApplicationRecord
  belongs_to :member
  has_many :election_results
end
