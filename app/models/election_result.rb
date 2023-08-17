class ElectionResult < ApplicationRecord
  belongs_to :constituency
  belongs_to :party

  has_many :candidates
end
