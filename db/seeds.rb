# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  name: "Esteban",
  email: "esteban@mail.com",
  password: "123456",
  role: 1
)

Image.create(
  id: 1,
  url: "https://lapi.com.mx/web/image/product.template/4986/image_1024?unique=a0477a2",
  imageable_type: "User",
  imageable_id: 1,
)