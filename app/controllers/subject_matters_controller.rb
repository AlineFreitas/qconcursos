class SubjectMattersController < ApplicationController
  def index
    @subject_matters = SubjectMatter.all
  end

  def new
    @subject = SubjectMatter.new
  end

  def create
    @subject = SubjectMatter.new(subject_params)

    if @subject.save
      flash[:success]= "Subject Matter created successfully"
      redirect_to @subject
    else
      render 'new'
    end
  end

  def destroy
    @subject = SubjectMatter.find(params[:id])
    if @subject.destroy
      flash[:success] = "Subject matter deleted successfuly"
      redirect_to subject_matters_url
    else
      flash[:error] = "Subject matter couldn't be found."
    end
  end

  def show
    @subject = SubjectMatter.find(params[:id])
  end

  def edit
    @subject = SubjectMatter.find(params[:id])
  end

  private
  def subject_params
    return params.require(:subject_matter).permit(:name, :discipline_id)
  end
end

