class MemberDecorator < SimpleDelegator

  def party_bg
    latest_party.background_colour
  end

  def party_fg
    latest_party.foreground_colour
  end

  def lords?
    latest_house_membership.house == 2
  end

  def commons?
    latest_house_membership.house == 1
  end

  def current?
    latest_house_membership.membership_end_date.nil?
  end

  def pronoun_subjective
    case gender
    when 'M'
      'he'
    when 'F'
      'she'
    else
      'they'
    end
  end

  def pronoun_possessive
    case gender
    when 'M'
      'his'
    when 'F'
      'hers'
    else
      'theirs'
    end
  end
end