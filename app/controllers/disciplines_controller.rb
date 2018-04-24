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

  def delete
    
  end

  def create
  end

  def update
  end

  def destroy
  end
end
