class CreateWordRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :word_relations do |t|
      t.references :word, null: false, foreign_key: true
      t.references :word_book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
