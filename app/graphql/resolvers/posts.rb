module Resolvers
  class Posts < GraphQL::Schema::Resolver
    type [Types::Post], null: true

    argument :ids, [ID], required: false

    def resolve(ids: nil)
      if ids.present?
        Post.where(id: ids)
      else
        Post.all
      end
    end
  end
end
