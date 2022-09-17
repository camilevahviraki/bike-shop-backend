# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@motorcycles = [
  {
    "category_id": 2,
    "productID": 389572,
    "brand": "Daelim",
    "model": "Altino 125 ES",
    "year": "2004",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2004/Altino%20125%20ES/Daelim_2004_Altino%20125%20ES.jpg",
    "booking_fee": 100,
    },
    {
    "category_id": 1,
    "productID": 200985,
    "brand": "Daelim",
    "model": "Daystar 125 FI",
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/Daystar%20125%20FI/Daelim_2011_Daystar%20125%20FI.jpg",
    "booking_fee": 150,
    },
    {
    "category_id": 3,
    "productID": 344347,
    "brand": "Daelim",
    "model": "RoadSport",
    "year": "2015",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2015/RoadSport/Daelim_2015_RoadSport.jpg",
    "booking_fee": 120,
    }
]

@motorcycles.each do |motorcycle|
  Motorcycle.create(motorcycle)
end