# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.transaction do
  categories = 30.times.map { |i| Category.create!(name: "Category ##{i}") }
  posts = 30.times.map { |i| Post.create!(title: "Post ##{i}") }

  categories.each do |category|
    category.posts = posts.shuffle.first(10)
  end

  posts.map(&:reload).each do |post|
    next if post.categories.present?

    post.categories = categories.shuffle.first(10)
  end
end
