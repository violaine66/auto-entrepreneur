class ChangeDefaultForClotureDossierInDossier < ActiveRecord::Migration[7.1]
  def change
    change_column_default :dossiers, :clotureDossier, from: nil, to: false
  end
end
