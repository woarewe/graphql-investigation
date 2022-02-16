class AddCategoryToPosts < ActiveRecord::Migration[7.0]
  def change
    create_table(:posts_categories) do |t|
      t.bigint :category_id, null: false
      t.bigint :post_id, null: false
    end
  end
end
