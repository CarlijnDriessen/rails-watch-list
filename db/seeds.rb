# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Movie.destroy_all

# 2. Create the instances 🏗️
puts "Creating movies..."


Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create!(title: "Inception", overview: "A skilled thief leads a team into people's dreams to steal secrets, but his latest mission may be his most dangerous.", poster_url: "https://image.tmdb.org/t/p/original/edv5CZvWj09upOsy2Y6IwDhK8bt.jpg", rating: 8.8)
Movie.create!(title: "The Dark Knight", overview: "Batman faces his greatest psychological and physical tests when the Joker unleashes chaos on Gotham.", poster_url: "https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg", rating: 9.0)
Movie.create!(title: "Forrest Gump", overview: "Forrest Gump, a man with a low IQ, recounts the early years of his life when he found himself in the middle of key historical events.", poster_url: "https://image.tmdb.org/t/p/original/saHP97rTPS5eLmrLQEcANmKrsFl.jpg", rating: 8.8)
Movie.create!(title: "The Matrix", overview: "A computer hacker learns about the true nature of his reality and his role in the war against its controllers.", poster_url: "https://image.tmdb.org/t/p/original/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg", rating: 8.7)
Movie.create!(title: "Interstellar", overview: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", poster_url: "https://image.tmdb.org/t/p/original/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg", rating: 8.6)
Movie.create!(title: "The Grand Budapest Hotel", overview: "The adventures of a legendary concierge and his loyal lobby boy at a famous European hotel.", poster_url: "https://image.tmdb.org/t/p/original/nX5XotM9yprCKarRH4fzOq1VM1J.jpg", rating: 8.1)
Movie.create!(title: "Gladiator", overview: "A betrayed Roman general seeks revenge against the corrupt emperor who murdered his family and sent him into slavery.", poster_url: "https://image.tmdb.org/t/p/original/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg", rating: 8.5)
Movie.create!(title: "Black Panther", overview: "T'Challa returns home to the African nation of Wakanda to take his rightful place as king.", poster_url: "https://image.tmdb.org/t/p/original/uxzzxijgPIY7slzFvMotPv8wjKA.jpg", rating: 7.3)
Movie.create!(title: "Joker", overview: "A mentally troubled stand-up comedian descends into madness and becomes the infamous Joker.", poster_url: "https://image.tmdb.org/t/p/original/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg", rating: 8.5)
Movie.create!(title: "Avengers: Endgame", overview: "The remaining Avengers band together for a final stand to undo Thanos' destruction and restore the universe.", poster_url: "https://image.tmdb.org/t/p/original/or06FN3Dka5tukK1e9sl16pB3iy.jpg", rating: 8.4)
Movie.create!(title: "La La Land", overview: "A jazz musician and an aspiring actress fall in love while pursuing their dreams in Los Angeles.", poster_url: "https://image.tmdb.org/t/p/original/uDO8zWDhfWwoFdKS4fzkUJt0Rf0.jpg", rating: 8.0)
Movie.create!(title: "The Social Network", overview: "The story of how Mark Zuckerberg created Facebook while attending Harvard and the legal battles that followed.", poster_url: "https://image.tmdb.org/t/p/original/n0ybibhJtQ5icDqTp8eRytcIHJx.jpg", rating: 7.7)
Movie.create!(title: "Parasite", overview: "A poor family schemes to become employed by a wealthy family by infiltrating their household.", poster_url: "https://image.tmdb.org/t/p/original/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg", rating: 8.6)
Movie.create!(title: "Mad Max: Fury Road", overview: "In a post-apocalyptic wasteland, Max teams up with Furiosa to flee from a tyrant.", poster_url: "https://image.tmdb.org/t/p/original/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg", rating: 8.1)
Movie.create!(title: "Coco", overview: "Aspiring musician Miguel enters the Land of the Dead to seek forgiveness from his ancestors and pursue his dream.", poster_url: "https://image.tmdb.org/t/p/original/gGEsBPAijhVUFoiNpgZXqRVWJt2.jpg", rating: 8.4)
Movie.create!(title: "Whiplash", overview: "A young drummer enrolls at a music conservatory where his dreams of greatness are mentored by a ruthless instructor.", poster_url: "https://image.tmdb.org/t/p/original/oPxnRhyAIzJKGUEdSiwTJQBa3NM.jpg", rating: 8.5)

# 3. Display a message 🎉
puts "Finished! Created #{Movie.count} movies."
