module CommonsDivisionsHelper
  # = column_chart([{ name: 'A1', stack: 'stack1', data: [['t1', 1],['t2',2],['t3',3],['t4', 4]] }, { name: 'A2', stack: 'stack1', data: [['t1', 1],['t2',2],['t3',3],['t4', 4]] }, { name: 'B1', stack: 'stack2', data: [['t1', 1],['t2',2],['t3',3],['t4', 4]] }], stacked: true)

  def division_voting_by_party_chart_data(division)
    by_party = Hash.new { |h, k| h[k] = [] }
    @party_colours = {}
    division.voting_by_party.reject { |k,_v| k.to_s.end_with?('teller') }.each_pair do |(vote, party_pair)|
      party_pair.each_pair do |(party, count)|
        by_party[party.name] << [vote.to_s.humanize, count]
        @party_colours[party.name] = (party.background_hex ? "##{party.background_hex}" : '#999999')
      end
    end

    by_party.transform_values! do |v| 
      v << ['No', 0] if v.map(&:first).none? { |vote| vote == 'No' }
      v << ['Aye', 0] if v.map(&:first).none? { |vote| vote == 'Aye' }
      v << ['No vote recorded', 0] if v.map(&:first).none? { |vote| vote == 'No vote recorded' }
      v
    end

    by_party.transform_values! { |v| v.sort_by(&:first) }

    { 
      data: by_party.map { |k, v| {name: k, data: v  } },
      colours: by_party.map { |k, _v| @party_colours[k] }
    }
    
  end

end
