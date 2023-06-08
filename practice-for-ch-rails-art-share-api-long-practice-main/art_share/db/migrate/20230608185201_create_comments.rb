class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false

      t.references :author, foreign_key: { to_table: :users}, index: true, null: false
      t.references :artwork, foreign_key: true, index: true, null: false


      t.timestamps
    end
  end
end
