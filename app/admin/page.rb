ActiveAdmin.register Page do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :title, :section_id, :body, :order, :is_published, :menu_displayed

  index do 
    column :id
    column :title, :sortable => :title
    column :section, :sortable => :section
    column :created_at, :sortable => :created_at
    column :order
    actions
  end

  form do |f|
    f.inputs "Details" do 
      f.input :title, :label => "Title"
      f.input :section, :label => "Section"
      f.input :body, :label => "Body"
      f.input :order, :label => "Order"
      f.input :is_published, :label => "Published"
      f.input :menu_displayed, :label => "Display in Menu"
    end
    f.actions
  end

end
