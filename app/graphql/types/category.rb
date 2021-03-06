module Types
  class Category < BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :posts, [Post], null: false, resolver: Resolvers::Posts
  end
end
