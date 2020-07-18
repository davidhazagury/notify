# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "1. Cleaning DB ..."

User.destroy_all
Folder.destroy_all
Note.destroy_all

puts "Creating users"

user_1 = User.create!(first_name: "David", last_name: "Hernandez", email:"davidhazagury@gmail.com", password:"123456789")

puts "Creating folders"

folder_1 = Folder.create!(user_id: user_1.id, folder_name: "University notes")
folder_2 = Folder.create!(user_id: user_1.id, folder_name: "To-Do list")
folder_3 = Folder.create!(user_id: user_1.id, folder_name: "Reminders")
folder_4 = Folder.create!(user_id: user_1.id, folder_name: "Mom stuff")

puts "Creating notes"

note_1 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam, saepe.", folder_id: folder_1.id)
note_2 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet.", folder_id: folder_1.id)
note_3 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet.", folder_id: folder_1.id)
note_4 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, corrupti!", folder_id: folder_1.id)
note_5 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, odit!", folder_id: folder_1.id)
note_6 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet.", folder_id: folder_1.id)
note_7 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet.", folder_id: folder_1.id)
note_8 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing.", folder_id: folder_2.id)
note_9 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing.", folder_id: folder_2.id)
note_10 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur, a.", folder_id: folder_3.id)
note_11 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, dicta.", folder_id: folder_3.id)
note_12 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, aliquid!", folder_id: folder_3.id)
note_13 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur itaque voluptas earum.", folder_id: folder_3.id)
note_14 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit.", folder_id: folder_4.id)
note_15 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit.", folder_id: folder_4.id)
note_16 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem ullam deserunt nostrum.", folder_id: folder_4.id)
note_17 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur, fugiat laudantium deserunt.", folder_id: folder_4.id)
note_18 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo esse voluptate reiciendis.", folder_id: folder_4.id)
note_19 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit.", folder_id: folder_4.id)
note_20 = Note.create!(note_title:"Lorem ipsum dolor sit amet.", note_content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit.", folder_id: folder_4.id)
puts "Done with the seeding!"
