class CreateDossiers < ActiveRecord::Migration[7.1]
  def change
    create_table :dossiers do |t|
      t.string :nomClient
      t.string :objetMission
      t.string :localisation
      t.float :propositionHonoraire
      t.date :dateAcceptation
      t.text :etatAvancement
      t.string :etapeFacturation
      t.date :dateReglement
      t.string :modeReglement
      t.boolean :clotureDossier

      t.timestamps
    end
  end
end
