ActiveAdmin.register Abizvn::General::GeneralSetting, as: 'general_setting' do
  menu label: 'General Settings', parent: "System", priority: 2

  permit_params do
    permitted = [:code, :value, :active, :order]
    permitted << :group if params[:action] == 'create'
    permitted
  end

  filter :group
  filter :code
  filter :value
  filter :active
  filter :created_at
  filter :updated_at

  index do
    selectable_column

    column :id
    column :group
    column :code
    column :value
    column :active
    column :order
    column :created_at
    column :updated_at

    actions
  end

  form do |f|
    f.inputs do
      f.input :group if params[:action] == 'new'
      f.input :code
      f.input :value
      f.input :order
      f.input :active
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :group
      row :code
      row :value
      row :created_at
      row :updated_at
    end

    active_admin_comments
  end
end
