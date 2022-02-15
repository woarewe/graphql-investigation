module Queries
  class Posts < GraphQL::Schema::Resolver
    type [Types::Post], null: true

    argument :after, String, required: false
    argument :first, Integer, required: false

    def resolve(after: nil, first: 20)
      relation = if after
        Post.where('id > :id', id: after)
      else
        Post
      end
      relation.limit(first).order(:id)
    end
  end
end
