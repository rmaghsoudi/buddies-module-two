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

dhara = User.create({:first_name=>"Dhara", :last_name=>"Patel", :username=>"123dhara", :password=>"dhara123", tutor: false, :bio=>"test student I'm great at learning"})

jeff = User.create({:first_name=>"Jeff", :last_name=>"Jefferson", :username=>"jeffjeff", :password=>"itsnotjeff", tutor: true, :bio=>"test tutor I'm great at teaching"})

romy = User.create({:first_name=>"Romy", :last_name=>"Maghsoudi", :username=>"rmaghsoudi", :password=>"rmaghsoudi", tutor: false, :bio=>"I want to finish my damn project"})

paula = User.create({:first_name=>"Paula", :last_name=>"Tulis", :username=>"ptulis", :password=>"ptulis", tutor: true, :bio=>"I'm having a great time at the lecture while my partners slave away at our project :)"})

code = Subject.create(name: "Code", description: "The art of slowly killing someone")

bud = StudyBuddy.create(tutor_id: jeff.id, student_id: dhara.id)

bud2 = StudyBuddy.create(tutor_id: paula.id, student_id: romy.id)
old_date = DateTime.new(2001,2,3,4,5,6)
new_date = DateTime.new(2020,2,3,4,5,6)

session1 = StudySession.create(name:"Past Session", student_id: dhara.id, tutor_id: jeff.id, subject_id: code.id, date: old_date )
session2 = StudySession.create(name:"Future Session", student_id: dhara.id, tutor_id: jeff.id, subject_id: code.id, date: new_date )
session3 = StudySession.create(name:"Differen t Users", student_id: romy.id, tutor_id: paula.id, subject_id: code.id, date: new_date )

review1 = Rating.create(value: 4, review: "Best person like ever, I want to teach him more", user_id: romy.id)
review2 = Rating.create(value: 3, review: "Sucked, would not teach again", user_id: romy.id)
review3 = Rating.create(value: 5, review: "I don't like him but he didn't talk much so 10/10", user_id: romy.id)
review4 = Rating.create(value: 3, review: "Explains properly, great mentor", user_id: paula.id)
review5 = Rating.create(value: 5, review: "I don't like", user_id: paula.id)
