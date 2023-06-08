class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :liker, foreign_key: { to_table: :users}, null: false, index: true
      t.references :likeable, polymorphic: true, null: false, index: true

      t.timestamps
    end
    add_index :likes, [:likeable_type,:likeable_id,:liker_id], unique: true
  end
end
