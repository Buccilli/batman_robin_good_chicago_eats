ActiveAdmin.register Restaurant do

 permit_params :good_service, :distance_to_joey, :price, :other_comments, :cuisine, :name, :neighborhood, :service_id, :added_by, :desire_to_go_to_restaurant

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
  
end
