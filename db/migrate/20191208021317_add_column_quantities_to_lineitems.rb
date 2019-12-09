class AddColumnQuantitiesToLineitems < ActiveRecord::Migration[6.0]
  def change
    add_column :lineitems, :quantities, :integer,default: 1
  end
end
