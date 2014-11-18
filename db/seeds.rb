# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(role: 'admin', email: 'admin@admin.com', name: 'Super Admin', password: '12345678', password_confirmation: '12345678') if !User.find_by_email('admin@admin.com')

(1..30000).each{|counter|
  importer = Importer.find_or_create_by(name: "Importer#{counter}") rescue nil
  winery   = Winery.find_or_create_by(name: "Winery#{counter}", importer_id: importer.id) rescue nil
  wine     = Wine.find_or_create_by(name: "Wine#{counter}", winery_id: winery.id) rescue nil
  puts counter
}
