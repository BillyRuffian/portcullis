class Constituency < ApplicationRecord
  belongs_to :member
  has_many :election_results

  scope :active, -> { where(end_date: nil) }

  def latest_election 
    election_results.order( election_date: :desc).first
  end

end
