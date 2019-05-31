# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
StudySession.destroy_all
Subject.destroy_all
StudyBuddy.destroy_all

rachel = User.create({:first_name=>"Rachel", :last_name=>"Wilson", :username=>"RachelW123", :password=>"rachel123", tutor: false, :bio=>"Hi, I'm Rachel!"})
sarah = User.create({:first_name=>"Sarah", :last_name=>"Johnson", :username=>"SarahJohnson", :password=>"sarah123", tutor: true, :bio=>"I'm really good at Ruby. Let's study together!"})
dan = User.create({:first_name=>"Dan", :last_name=>"Scott", :username=>"DannyBoy91", :password=>"daniel", tutor: true, :bio=>"I'm really good at Javascript."})
dhara = User.create({:first_name=>"Dhara", :last_name=>"Patel", :username=>"123dhara", :password=>"dhara123", tutor: false, :bio=>"test student I'm great at learning"})
jeff = User.create({:first_name=>"Jeff", :last_name=>"Jefferson", :username=>"jeffjeff", :password=>"itsnotjeff", tutor: true, :bio=>"love to teach, love to learn"})
romy = User.create({:first_name=>"Romy", :last_name=>"Maghsoudi", :username=>"rmaghsoudi", :password=>"rmaghsoudi", tutor: false, :bio=>"I want to finish my damn project"})
paula = User.create({:first_name=>"Paula", :last_name=>"Tulis", :username=>"ptulis", :password=>"ptulis", tutor: true, :bio=>":)"})

ruby = Subject.create(name: "Ruby", description: "on rails!")
java = Subject.create(name: "Javascript", description: "Loves it")
cooking = Subject.create(name: "Cooking", description: "The fine art of creating bomb meals")
cars = Subject.create(name: "Cars", description: "vrooooooom")
sql = Subject.create(name: "SQL", description: "learning how to query")


bud = StudyBuddy.create(tutor_id: paula.id, student_id: dhara.id)
bud = StudyBuddy.create(tutor_id: jeff.id, student_id: romy.id)
bud = StudyBuddy.create(tutor_id: paula.id, student_id: rachel.id)
bud = StudyBuddy.create(tutor_id: jeff.id, student_id: dhara.id)
bud2 = StudyBuddy.create(tutor_id: paula.id, student_id: romy.id)
old_date = DateTime.new(2001,2,3,4,5,6)
new_date = DateTime.new(2020,2,3,4,5,6)

session1 = StudySession.create(name:"Dhara and Jeff go over coding", student_id: dhara.id, tutor_id: jeff.id, subject_id: ruby.id, date: old_date )
session2 = StudySession.create(name:"Dhara and Jeff go over cooking", student_id: dhara.id, tutor_id: jeff.id, subject_id: cooking.id, date: new_date )
session3 = StudySession.create(name:"Dhara and Paula talk about SQL", student_id: dhara.id, tutor_id: paula.id, subject_id: sql.id, date: new_date )

review1 = Rating.create(value: 4, review: "Best person like ever, I want to teach him more", user_id: romy.id)
review2 = Rating.create(value: 3, review: "Sucked, would not teach again", user_id: romy.id)
review3 = Rating.create(value: 5, review: "I don't like him but he didn't talk much so 10/10", user_id: romy.id)
review4 = Rating.create(value: 3, review: "Explains properly, great mentor", user_id: paula.id)
review5 = Rating.create(value: 5, review: "I don't like", user_id: paula.id)
