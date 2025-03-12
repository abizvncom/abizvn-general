class ReviewGeneralSetting < ActiveRecord::Migration[7.2]
  def change
    add_column :general_settings, :order, :integer, null: false, default: 0
    add_column :general_settings, :active, :boolean, null: false, default: true
  end
end
