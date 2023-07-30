class WrittenQuestionsController < ApplicationController
  include MembersConcern
  include WrittenQuestionsConcern

  def index
    @page = params[:page].to_i || 1
    @page = 1 if @page <= 0
    results = members_api.api_members_id_written_questions_get(params[:member_id], page: @page)
    @questions = results
                  .items
                  .map(&:value)
    @total_results = results.total_results
    @per_page = results.take
    @total_pages = (@total_results.to_f / @per_page.to_f).ceil
  end

  def show
    @question = written_questions_api.api_writtenquestions_questions_id_get(params[:id]).value
  end

end
