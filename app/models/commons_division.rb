class CommonsDivision < ApplicationRecord
  has_many :commons_votes, dependent: :destroy

  def latest

  end

end
