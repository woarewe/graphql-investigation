module Resolvers
  class Categories < GraphQL::Schema::Resolver
    type [Types::Category], null: true

    argument :ids, [ID], required: false

    def resolve(ids: nil)
      if ids.present?
        Category.where(id: ids)
      else
        Category.all
      end
    end
  end
end
