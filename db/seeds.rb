# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(  username:"janjouke",
              email:"janjouke@gmail.com",
              password: "ww",
              password_confirmation: "ww"
            )
User.create(  username:"warner",
              email:"warnervanhaaren@gmail.com",
              password: "ww",
              password_confirmation: "ww"
            )

Step.delete_all
Step.create(  title: "Een laptop standaard",
              body: "Ik heb een tijdje de standaard van een kantoorgenoot gebruikt, maar die moet ik terug geven binnenkort. Nu kan ik er zelf zo eentje kopen voor 30 euro, maar ik ga er liever eentje zelf maken.",
              step_type: "question",
              user_id: 1,
              appreciation_counter: 1              
            )
Step.create(  parent_id: Step.first.id,
              title: "Welk materiaal",
              body: "Welk materiaal zal ik kiezen? Staal of hout",
              user_id: 1,
              step_type: "question"
            )
Step.create(  parent_id: Step.last.id,
              title: "Dit is misschien een leuk idee",
              user_id: 2,
              body: "Kijk eens naar dit plaatje <b>plaatje plaatje</b>"
            )

Comment.delete_all
Comment.create( body: "vet project gek!",
                user_id: User.last.id,
                step_id: 1
              )
              
Appreciation.delete_all
Appreciation.create(  value: 1,
                      user_id: User.last.id,
                      step_id: 1 
                      )
              
              