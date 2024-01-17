require 'faker'

puts 'creating articles:'

counter = 0

20.times do
  puts(counter += 1)

  number_of_paragraphs = 4
  sentences_per_paragraph = 15

  content = Array.new(number_of_paragraphs) do
    Faker::Lorem.sentences(number: sentences_per_paragraph).join(' ')
  end

  content = content.join(",")

  article = Article.new(title: Faker::Book.title, content: content)
  article.save
end
