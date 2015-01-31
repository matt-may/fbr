class QuizRunsController < ApplicationController
  before_action :set_quiz_run, only: [:show, :edit, :update, :destroy]

  # GET /quiz_runs
  # GET /quiz_runs.json
  def index
    @quiz_runs = QuizRun.all
    @questions = Question.all
  end

  # GET /quiz_runs/1
  # GET /quiz_runs/1.json
  def show
  end

  # GET /quiz_runs/new
  def new
    @quiz_run = QuizRun.new
  end

  # GET /quiz_runs/1/edit
  def edit
  end

  # POST /quiz_runs
  # POST /quiz_runs.json
  def create
    @quiz_run = QuizRun.new(quiz_run_params)

    respond_to do |format|
      if @quiz_run.save
        format.html { redirect_to @quiz_run, notice: 'Quiz run was successfully created.' }
        format.json { render :show, status: :created, location: @quiz_run }
      else
        format.html { render :new }
        format.json { render json: @quiz_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz_runs/1
  # PATCH/PUT /quiz_runs/1.json
  def update
    respond_to do |format|
      if @quiz_run.update(quiz_run_params)
        format.html { redirect_to @quiz_run, notice: 'Quiz run was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz_run }
      else
        format.html { render :edit }
        format.json { render json: @quiz_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz_runs/1
  # DELETE /quiz_runs/1.json
  def destroy
    @quiz_run.destroy
    respond_to do |format|
      format.html { redirect_to quiz_runs_url, notice: 'Quiz run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_run
      @quiz_run = QuizRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_run_params
      params.require(:quiz_run).permit(:name, :description, question_ids: [])
    end
end
