class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :image
      t.string :description
      t.integer :amount

      t.timestamps
    end
  end
end
