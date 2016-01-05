# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create!()
Game.create!()
Game.create!()
Game.create!()
Game.create!()


 # ADMINISTRATOR 
User.create!(name:  "Julian Trajanson",
             email: "justin.felder@live.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "human",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)



## Hard AI
User.create!(name:  "HK-47",
             email: "HK-47@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Lieutenant Commander Data",
             email: "LtCData@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Borg Inteface 7H-Ω3",
             email: "borg@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "SKYNET",
             email: "skynet@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Deep Thought",
             email: "deepthought@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)                

## MEDIUM AI
User.create!(name:  "Agent Smith",
             email: "AgentSmith@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "T-800",
             email: "T800@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Lore",
             email: "Lore@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "R2-D2",
             email: "R2D2@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Cortana",
             email: "Cortana@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

## Easy AI
User.create!(name:  "Roberto the Criminally Insane Robot",
             email: "RobertoInsane@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "HAL-9000",
             email: "hal9000@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Tin Man",
             email: "tinman@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "C-3PO",
             email: "c3po@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Bender Bending Rodríguez",
             email: "bender@trajanson.com",
             password:              "foobar",
             password_confirmation: "foobar",
             human_or_ai:           "ai",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)





99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               human_or_ai:           "human",
               activated: true,
               activated_at: Time.zone.now)
end
