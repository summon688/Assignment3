class CreateShoppers < ActiveRecord::Migration[6.0]
  def change
    create_table :shoppers do |t|

      t.timestamps
    end
  end
end
