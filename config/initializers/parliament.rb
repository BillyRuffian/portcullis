ParliamentMembers.configure do |config|
  config.host = 'https://members-api.parliament.uk/api'
end

ParliamentCommonsVotes.configure do |config|
  config.host = 'https://commonsvotes-api.parliament.uk/data/divisions.json'
end