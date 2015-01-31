class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  before_action :set_quiz_run, only: [:show]

  # GET /tests/1
  # GET /tests/1.json
  def show
    @result = Result.new
    questions = @quiz_run.questions
    @questions = questions.offset(rand(questions.count)).paginate(:page => params[:page], :per_page => 1, :total_entries => 5)
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:quiz_run_id)
    end

    def set_quiz_run
      @quiz_run = @test.quiz_run
    end
end
