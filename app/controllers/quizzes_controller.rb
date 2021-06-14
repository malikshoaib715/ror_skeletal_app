class QuizzesController < ApplicationController
  before_action :authenticate_user!,
                only: [:create, :edit]

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
    @quiz.questions.build.answers.build
  end

  def create
    Quiz.create(quiz_params)

    flash[:notice] = 'New Quiz has been created'
    redirect_to root_path
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def show
    @quiz = Quiz.find(params[:id])
    # @quizQuestion = QuizQuestion.find(params[:id])
    @result= Result.create(user_id: current_user.id, quiz_id: @quiz.id )
  end

  def choose_answer
    @question = Question.find(params[:question_id])
    result = current_user.results.last
    @choosenanswer = ChoosenAnswer.create(question_id: params[:question_id], answer_id: params[:answer_id], result_id: result.id)

    respond_to do |format|
      format.js
    end
  end

  def show_answer
    @question = Question.find(params[:question_id])
    respond_to do |format|
      format.js
    end
  end

  def add_another_question
    @quizQuestion = QuizQuestion.create(quiz_question_params)
    respond_to do |format|
      format.js
    end
  end

  def choose_random
    redirect_to quiz_path(Quiz.order('RANDOM()').first.id)
  end

  private
  def quiz_params
    params.require(:quiz).permit(:name, :description, :user_id, questions_attributes: [:text, answers_attributes: [:text, :is_true]])
  end
  def quiz_question_params
    params.require(:quizQuestion).permit(:quiz_id, question_id: [])
  end

end
