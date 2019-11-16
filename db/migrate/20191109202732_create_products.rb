class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price_cents, null: false, default: 0

      t.timestamps
    end
  end
end
