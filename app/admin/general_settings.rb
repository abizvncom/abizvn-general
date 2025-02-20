ActiveAdmin.register Abizvn::General::GeneralSetting, as: 'general_setting' do
  menu label: 'General Settings', parent: "System", priority: 2

  permit_params do
    permitted = [:code, :value, :active, :order]
    permitted << :group if params[:action] == 'create'
    permitted
  end

  form do |f|
    f.semantic_errors *f.object.errors.attribute_names

    f.inputs do
      f.input :group
      f.input :code
      f.input :value
      f.input :order
      f.input :active
    end
    f.actions
  end
end
