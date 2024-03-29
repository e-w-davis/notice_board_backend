# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
100.times do
    Notice.create(
        title: Faker::TvShows::TwinPeaks.quote,
        author: Faker::Movies::StarWars.character,
        phone: Faker::PhoneNumber.cell_phone
    )
end

p "Seeded database"