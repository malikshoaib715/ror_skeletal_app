# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do |i|
  Report.create(column1:"Row #{i} Data",column2:"Row #{i} Data",column3:"Row #{i} Data",column4:"Row #{i} Data",column5:"Row #{i} Data",column6: i,column7: i,column8: i,column9:"Row #{i} Data",column:"Row #{i} Data",)
end
