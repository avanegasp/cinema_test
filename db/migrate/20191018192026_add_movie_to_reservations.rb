class AddMovieToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :movie, foreign_key: true
  end
end
