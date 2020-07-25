class AddSpoilerToMovieComments < ActiveRecord::Migration[5.2]
  def change
    add_column :movie_comments, :spoiler, :boolean, default: true
  end
end
