class DossiersController < ApplicationController
  def index
    @dossiers = current_user.dossiers
end
