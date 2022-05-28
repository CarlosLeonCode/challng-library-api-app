require 'faker'

if Book.all.empty?
    books = Array.new
    5.times do
        books.push({
            code: Faker::Code.npi,
            name: Faker::Book.title,
            author: Faker::Book.author,
            genre: Faker::Book.genre,
            status: :available
        })
    end
    Book.create!(books)
    puts '▶ Books created! 😎'
else
    puts '▶ Already exist books 😁'
end

if User.all.empty?
    users = Array.new
    2.times do
        faker_name_lastname = Faker::Name.name.split(' ')
        users.push({
            name: faker_name_lastname.first,
            last_name: faker_name_lastname.last,
            doc_id: Faker::IDNumber.valid,
            genre: :female,
            status: :active
        })
    end
    User.create!(users)
    puts '▶ Users created! 😎'
else 
    puts '▶ Already exist users😁'
end
