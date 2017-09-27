ActiveAdmin.register Cake do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
permit_params :name, flavor_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs do
      f.input :name
    end
    f.inputs do
      f.input :flavor_ids, :multiple => true, as: :check_boxes, :collection => Flavor.all
    end
    f.actions
  end
end
