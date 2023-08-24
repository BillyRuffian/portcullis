class CommonsDivision < ApplicationRecord
  has_many :commons_votes, dependent: :destroy
  has_many :members, through: :commons_votes

  PAGE_SIZE = 25

  scope :page, -> (member, page_number = 0) do 
    includes(commons_votes: :member)
      .where(commons_votes: {member:})
      .order(division_date: :desc)
      .limit(PAGE_SIZE)
      .offset((page_number - 1) * PAGE_SIZE)
  end

  def voting(member)
    commons_votes.where(member:)
  end

  def majority
    (aye_count - no_count).abs
  end

  def voting_by_party 
    commons_votes
      .includes(member: :party)
      .group_by { |v| v.vote }
      .transform_values { |x| x.map { |v| v.member.party } }
      .transform_values { |v| v.tally }
      .with_indifferent_access
  end

end
