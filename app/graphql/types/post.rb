module Types
  class Post < BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :category, Category, null: false
  end
end
