class DropTablepictures < ActiveRecord::Migration[6.0]
  def change
    # unless table_exists?(:pictures)
    create_table :pictures do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
