class CalculsController < ApplicationController
  def index
    @calculs = [
      { id:"bois",  name: "Poutre bois"},
      {id:"béton", name: "Poutre béton"}
    ]
  end

  def new

  end

  def resultats
    @type = params[:type]
    case @type
    when "bois"
      b = params[:b].to_f
      h = params[:h].to_f
      l = params[:l].to_f
      c = params[:c].to_f
      iv = (b * h**2) / 6
      m = (c * l**2) / 8
      @result = iv.zero? ? "Division par zéro !" : m / iv
      @iv = iv
      @m = m
    else
      @result = "Pas de calcul pour ce type de poutre"
    end

  end


end
