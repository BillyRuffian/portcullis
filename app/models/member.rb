class Member < ApplicationRecord
  belongs_to :party

  enum :house, { commons: 1, lords: 2 }

  def current?
    end_date.nil?
  end

  def commons?
    house == 'commons'
  end

  def lords?
    house == 'lords'
  end
end
