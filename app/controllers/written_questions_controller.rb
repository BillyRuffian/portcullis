class WrittenQuestionsController < ApplicationController
  include MembersConcern

  def index
    @questions = members_api.api_members_id_written_questions_get(params[:member_id]).items.map(&:value)
  end

  def get 
  end

end
