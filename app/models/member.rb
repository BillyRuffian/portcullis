class Member < ApplicationRecord
  belongs_to :party

  enum :house, { commons: 1, lords: 2 }

  scope :search, -> (name) do 
    where( 'display_as LIKE ?', "%#{name}%")
      .where(end_date: nil)
      .order(:display_as)
      .limit(15)
  end

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
