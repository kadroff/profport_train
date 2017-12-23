class CompetencesController < ApplicationController
  def index
    @competences = Compentece.all
  end

  def show
    @competence = Competence.first()
  end

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.create(competences_path)
    render plain: "OK"
  end

  private
    def competence_params
      params.require(:competence).permit(:title, :description)
    end
end
