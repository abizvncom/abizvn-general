class AddMandatoryFields < ActiveRecord::Migration[7.2]
  def change
    change_column_null :general_settings, :group, false
    change_column_null :general_settings, :code, false
    change_column_null :general_settings, :value, false
  end
end
