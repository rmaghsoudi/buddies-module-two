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

code = Subject.create(name: "Code", description: "The art of slowly killing someone")

bud = StudyBuddy.create(tutor_id: jeff.id, student_id: dhara.id)

studysession = StudySession.create(name: "study session", tutor_id: dhara.id, student_id: jeff.id, subject_id: code.id, date: Time.now)
