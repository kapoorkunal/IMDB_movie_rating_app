class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year, limit: 4
      t.integer :rating, limit: 2
      t.text :description

      t.timestamps null: false
    end
  end
end
