module Types
  class Post < BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :categories, [Category], null: false, resolver: Resolvers::Categories
  end
end
