class AddImageToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :image, :string
  end
end
