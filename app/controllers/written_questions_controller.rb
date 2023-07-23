class WrittenQuestionsController < ApplicationController
  include MembersConcern
  include WrittenQuestionsConcern

  def index
    @questions = members_api.api_members_id_written_questions_get(params[:member_id]).items.map(&:value)
  end

  def show
    @question = written_questions_api.api_writtenquestions_questions_id_get(params[:id]).value
  end

end
