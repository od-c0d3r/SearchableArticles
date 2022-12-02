puts "Seeding.."

User.create! email: "test@test.com", password: "notsostrongpassword", password_confirmation: "notsostrongpassword"
500.times { Article.create! user: User.first, title: "Book Review: #{Faker::Book.title}", body: Faker::Lorem.paragraphs.join(' ') }

puts "Done."
