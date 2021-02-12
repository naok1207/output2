class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.references :user, null: false, foreign_key: true
      t.string :word
      t.text :description

      t.timestamps
    end
  end
end
