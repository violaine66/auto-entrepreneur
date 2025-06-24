class DossiersController < ApplicationController
  def index
    @dossiers = Dossier.order(:created_at)
  end

  def show
    @dossier = Dossier.find(params[:id])
  end

  def new
    @dossier = Dossier.new
  end

  def create
    @dossier = Dossier.new(dossier_params)
    @dossier.user = current_user

    if @dossier.save
      redirect_to @dossier, notice: 'Dossier créé avec succès.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @dossier = Dossier.find(params[:id])
  end

  def update
    @dossier = Dossier.find(params[:id])

    if @dossier.update(dossier_params)
      redirect_to @dossier, notice: 'Dossier mis à jour avec succès.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  

  private
  def dossier_params
    params.require(:dossier).permit(
      :nomClient,
      :objetMission,
      :localisation,
      :propositionHonoraire,
      :dateAcceptation,
      :etatAvancement,
      :etapeFacturation,
      :dateReglement,
      :modeReglement,
      :clotureDossier
    )
  end
end
