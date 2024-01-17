require 'faker'

puts "creating articles:"
20.times do
  counter = 0
  puts(counter + 1)
  article = Article.new(title: Faker::Book.title,
              content: Faker::Lorem.paragraphs(number: 3).join("\n\n"))
  article.save
end
