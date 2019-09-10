class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 50
      t.string :url, limit: 50
      t.text :description

      t.timestamps
    end
  end
end
