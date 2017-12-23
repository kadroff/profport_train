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
    @competence = Competence.create(competence_path)
    render plain: "OK"
  end

  def edit
    @competence = Competence.first()
  end

  def update
    @competence = Competence.update(competence_params)
    render plain: "OK"
  end

  def destroy
    @competence = Competence.find( params[:id])
    @competence.destroy
    render plain: "Удалили"
  end

  private
    def competence_params
      params.require(:competence).permit(:title, :description)
    end
end
