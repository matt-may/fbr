class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index
    @results = Result.all
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        page = params[:page].to_i
        question_count = @result.test.quiz_run.questions.count
        new_page = (page == question_count) ? page : page+1

        @result.update_attribute :expected_answer_id, @result.question.correct_answer.id

        msg = if @result.expected_answer == @result.actual_answer
                "Congrats! Your answer was correct."
              else
                "We're sorry, your answer was wrong. Correct answer: '#{@result.actual_answer.description}'."
              end

        format.html { redirect_to test_path(@result.test, page: new_page), notice: msg }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:question_id, :test_id, :expected_answer_id, :actual_answer_id)
    end
end
