require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# create authors
sirumba_simon = Author.new('Sirumba Simon')
nigel = Author.new('nigel')

# create magazines
sports = Magazine.new('sports', 'News')
novels = Magazine.new('Novels', 'Entertainment')
golden = Magazine.new('Golden', 'Fashion')

# create articles
sirumba_simon.add_article(sports, 'Greatness and wellbeing')
nigel.add_article(novels, 'The arising star')
sirumba_simon.add_article(golden, 'Fashion Trends for the Spring')

# test methods
#puts "Authors: #{Author.all.map(&:name)}"
puts "Magazines: #{Magazine.all.map(&:name)}"
puts "Articles: #{Article.all.map(&:title)}"

puts "Sirumba Simon's articles: #{sirumba_simon.articles.map(&:title)}"
puts "Sirumba Simon's magazines: #{sirumba_simon.magazines.map(&:name)}"
puts "Sirumba Simon's topic areas: #{sirumba_simon.topic_areas}"
