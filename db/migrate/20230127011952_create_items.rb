class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :quantity
      t.string :bringing, array: true, default: []

      t.timestamps
    end
  end
end
