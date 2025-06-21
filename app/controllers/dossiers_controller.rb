class DossiersController < ApplicationController
  def index
    @dossiers = Dossier.order(:created_at)
  end

  def show
    @dossier = Dossier.find(params[:id])
  end
end
