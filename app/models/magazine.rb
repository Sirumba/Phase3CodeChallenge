class Magazine
  attr_reader :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def authors
    articles.map { |article| article.author }.uniq
  end

  def self.find_by_name(name)
    @@all.find { |magazine| magazine.name == name }
  end

  def summary
    puts "Name: #{name}"
    puts "Category: #{category}"
    puts "Authors: #{authors.map(&:full_name).join(', ')}"
    puts "Number of Articles: #{articles.length}"
  end
end