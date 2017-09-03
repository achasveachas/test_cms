100.times do
    Contact.create name: Faker::Name.name, 
               email: Faker::Internet.email
end

Contact.all.each do |contact|
    contact.telephones.create number: "#{Faker::Number.number(3)}-#{Faker::Number.number(3)}-#{Faker::Number.number(4)}",
        location: "Home",
        default: true
end

