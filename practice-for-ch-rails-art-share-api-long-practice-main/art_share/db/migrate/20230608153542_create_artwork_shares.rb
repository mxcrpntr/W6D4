class CreateArtworkShares < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_shares do |t|
      t.references :artwork, foreign_key: true, null: false, index: true
      t.references :viewer, foreign_key: { to_table: :users}, null: false, index: true

      t.timestamps
    end
  end
end
