# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Article.create(title: "LeBron James marque 40 points", content: "LeBron a mené les Lakers à la victoire avec une performance incroyable...", league: "NBA")
Article.create(title: "Tom Brady de retour", content: "Le quarterback des Buccaneers revient après une blessure...", league: "NFL")
Article.create(title: "Les Yankees battent les Red Sox", content: "Les Yankees ont remporté une victoire historique hier soir...", league: "MLB")


Team.create(name: "Los Angeles Lakers", league: "NBA", wins: 45, losses: 30)
Team.create(name: "Dallas Cowboys", league: "NFL", wins: 12, losses: 5)
Team.create(name: "New York Yankees", league: "MLB", wins: 60, losses: 22)
