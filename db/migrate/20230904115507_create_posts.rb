class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :keyword
      t.integer :amount

      t.timestamps
    end
  end
end
