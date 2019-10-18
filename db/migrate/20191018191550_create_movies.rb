class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name_movie
      t.text :description
      t.string :url_movie
      t.integer :presentation_days

      t.timestamps
    end
  end
end
