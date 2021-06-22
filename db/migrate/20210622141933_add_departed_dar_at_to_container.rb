class AddDepartedDarAtToContainer < ActiveRecord::Migration[5.1]
  def change
    add_column :containers, :departed_dar_at, :datetime
  end
end
