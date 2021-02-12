class CreateWordBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :word_books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
