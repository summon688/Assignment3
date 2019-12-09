class CreateFs < ActiveRecord::Migration[6.0]
  def change
    create_table :fs do |t|
      t.string :Name

      t.timestamps
    end
  end
end
