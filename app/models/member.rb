class Member < ApplicationRecord
  belongs_to :party

  enum :house, { commons: 1, lords: 2 }
end
