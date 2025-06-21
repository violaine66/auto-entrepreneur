# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
puts "Suppression des données existantes"
Dossier.destroy_all
User.destroy_all

puts "Création de l'utilisateur administrateur"
 User.create!(
  email: ENV.fetch("ADMIN_EMAIL"),
  nom: ENV.fetch("ADMIN_NOM"),
  password: ENV.fetch("ADMIN_PASSWORD"),
)

puts "Création des dossiers"
Dossier.create!([
  {
    nomClient: "Société BâtirPro",
    objetMission: "Diagnostic structure avant rénovation",
    localisation: "Lyon 3e",
    propositionHonoraire: 1200.0,
    dateAcceptation: Date.new(2024, 4, 12),
    etatAvancement: "Étude en cours – plans récupérés",
    etapeFacturation: "Acompte",
    dateReglement: Date.new(2024, 4, 20),
    modeReglement: "Virement",
    clotureDossier: false,
    user: User.first
  },
  {
    nomClient: "Jean Dupont",
    objetMission: "Calcul poutre béton armé",
    localisation: "Villeurbanne",
    propositionHonoraire: 600.0,
    dateAcceptation: Date.new(2024, 5, 3),
    etatAvancement: "Calculs terminés, rapport en relecture",
    etapeFacturation: "Solde",
    dateReglement: Date.new(2024, 5, 10),
    modeReglement: "Chèque",
    clotureDossier: false,
    user: User.first
  },
  {
    nomClient: "Architectes Associés",
    objetMission: "Étude plancher bois – bâtiment ERP",
    localisation: "Grenoble",
    propositionHonoraire: 3200.0,
    dateAcceptation: Date.new(2024, 2, 20),
    etatAvancement: "Livré – en attente retour client",
    etapeFacturation: "Totalité",
    dateReglement: Date.new(2024, 3, 1),
    modeReglement: "Virement",
    clotureDossier: false,
    user: User.first
  },
  {
    nomClient: "SCI Les 3 Pins",
    objetMission: "Vérification murs porteurs suite à ouverture",
    localisation: "Annecy",
    propositionHonoraire: 850.0,
    dateAcceptation: Date.new(2023, 11, 15),
    etatAvancement: "Clôturé – rapport transmis",
    etapeFacturation: "Réglé",
    dateReglement: Date.new(2023, 12, 1),
    modeReglement: "Espèces",
    clotureDossier: true,
    user: User.first
  },
  {
    nomClient: "Maître Leroy",
    objetMission: "Expertise judiciaire – fissures maison",
    localisation: "Chambéry",
    propositionHonoraire: 2500.0,
    dateAcceptation: Date.new(2024, 6, 1),
    etatAvancement: "Rédaction en cours",
    etapeFacturation: "Acompte",
    dateReglement: nil,
    modeReglement: nil,
    clotureDossier: false,
    user: User.first

  }
])
