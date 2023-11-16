puts 'Cleaning DB'
Movie.delete_all

puts 'Creatig Seeds'

50.times do
  Movie.create({
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://cdn.europosters.eu/image/1300/3d-posters/star-wars-one-sheet-i6299.jpg',
    rating: Faker::Number.decimal(l_digits: 1, r_digits: 2)
  })
  puts 'One plant seeded'
end


puts 'Finished'
