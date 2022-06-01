# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sporting = Group.create(name: 'Sporting')
hound = Group.create(name: 'Hound')
working = Group.create(name: 'Working')
terrier = Group.create(name: 'terrier')
toy = Group.create(name: 'toy')
non_sporting = Group.create(name: 'Non-Sporting')
herding = Group.create(name: 'Herding')

Breed.create(name: "Shiba Inu", image_url: "https://www.bil-jac.com/media/kkobwqpy/shiba-inu-1047146596.jpg?anchor=center&mode=crop&width=600&height=400&rnd=132167292121870000.jpg", info: "This breed is extremely agile and resembles a fox. These dogs have great endurance. Generally a neat and clean dog, most Shiba-Inus have white markings on face and chest, as well as a curly tail.", group_id: non_sporting.id )