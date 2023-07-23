ParliamentMembers.configure do |config|
  config.host = 'https://members-api.parliament.uk/api'
end

ParliamentCommonsVotes.configure do |config|
  config.host = 'https://commonsvotes-api.parliament.uk/data/divisions.json'
end

ParliamentWrittenQuestions.configure do |config|
  config.host = 'https://writtenquestions-api.parliament.uk/api/writtenquestions'
end