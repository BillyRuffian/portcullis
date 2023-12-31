class Member < ApplicationRecord
  belongs_to :party
  has_one :constituency
  has_many :commons_votes, dependent: :destroy
  has_many :commons_divisions, through: :commons_votes

  enum :house, { commons: 1, lords: 2 }

  scope :search, -> (name) do 
    where( 'display_as ILIKE ?', "%#{name}%")
      .order(:display_as)
      .limit(15)
  end

  scope :current, -> { where(end_date: nil) }

  def current?
    end_date.nil?
  end

  def commons?
    house == 'commons'
  end

  def lords?
    house == 'lords'
  end

  def address_as
    @address_as || display_as
  end
end
