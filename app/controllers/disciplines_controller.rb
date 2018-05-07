class DisciplinesController < ApplicationController
  def new
    @discipline = Discipline.new
  end

  def show
    @discipline = Discipline.find(params[:id])
  end

  def index
    @disciplines = Discipline.all
  end

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      flash[:success] = "Disciplina criada com sucesso!"
      redirect_to @discipline
    else
      render 'new'
    end
  end

  def update

    if @discipline.save
      flash[:success] = "Disciplina atualizada com sucesso."
    end
  end

  def destroy
    if Discipline.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to disciplines_url
    end
  end


  private
  def discipline_params
    return params.require(:discipline).permit(:name)
  end
end
