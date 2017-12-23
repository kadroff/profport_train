class CompetencesController < ApplicationController
  before_action :find_competence, only: [:show, :edit, :update, :destroy]

  def index
    @competences = Compentece.all
  end

  def show
  end

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.create(competence_path)
    redirect_to competences_path(@competence), notice: "Создали компетенцию!"
  end

  def edit
    redirect_to competences_path(@competence), notice: "Отредактировали компетенцию!"
  end

  def update
    @competence = Competence.update(competence_params)
    redirect_to competences_path, notice: "Удалили компетенцию!"
  end

  def destroy
    @competence.destroy
    render plain: "Удалили"
  end

  private
    def competence_params
      params.require(:competence).permit(:title, :description)
    end

  def find_competence
    @competence = Competence.first()
  end
end
