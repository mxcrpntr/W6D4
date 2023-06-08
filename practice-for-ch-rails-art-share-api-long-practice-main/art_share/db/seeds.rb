# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ username: "max"}, { username: "jordy"}])
artworks = Artwork.create([{ title: "google logo",
image_url: "/Users/aa_student/Downloads/W6D4/practice-for-ch-rails-art-share-api-long-practice-main/art_share/app/assets/images/Google_Images_2015_logo.svg.png", artist_id: 1
}, {title: "app academy logo", image_url: "/Users/aa_student/Downloads/W6D4/practice-for-ch-rails-art-share-api-long-practice-main/art_share/app/assets/images/6269b3a19f67fd137a262d0a_A Logo Main - Red.svg", artist_id: 2}])

artwork_shares = ArtworkShare.create([{artwork_id: 1}, {viewer_id: 2} ])
