module WrittenQuestionsConcern
  extend ActiveSupport::Concern 

  def written_questions_api
    @written_questions_api ||= ParliamentWrittenQuestions::WrittenQuestionsApi.new
  end
end