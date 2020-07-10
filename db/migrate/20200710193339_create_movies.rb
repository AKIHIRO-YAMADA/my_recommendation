class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|

      t.string  :title
      t.string  :heading
      t.integer  :category_id
      t.string  :image_id
      t.text  :impression
      t.boolean  :spoiler, default: true
      t.timestamps
    end
  end
end
