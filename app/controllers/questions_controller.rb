class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def edit
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    @question.options.build
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:sucess]= "Question successfuly created"
      redirect_to @question
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      return_to questions_path
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      flash[:success]= "Successfuly destroied"
      redirect_to questions_url
    end
  end

  private
    def question_params
      params.require(:question).permit( :question_type, :subject_matter_id, :statement,
                                        options_attributes: [ :id, :description, :answer, :_destroy])
    end
end
