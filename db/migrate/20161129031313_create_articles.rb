class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :image
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
