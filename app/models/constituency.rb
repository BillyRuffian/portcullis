class Constituency < ApplicationRecord
  belongs_to :member
  has_one :party, through: :member
  has_many :election_results

  scope :active, -> { includes(member: :party).where(end_date: nil) }

  def latest_election 
    election_results.order( election_date: :desc).first
  end

end
