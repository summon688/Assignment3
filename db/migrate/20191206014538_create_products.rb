class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.string :image
      t.integer :Price

      t.timestamps
    end
  end
end
