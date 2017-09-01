100.times do
    Contact.create name: Faker::Name.name, 
               email: Faker::Internet.email, 
               phone: "#{Faker::Number.number(3)}-#{Faker::Number.number(3)}-#{Faker::Number.number(4)}"
end



