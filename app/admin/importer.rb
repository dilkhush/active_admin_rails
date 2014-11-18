ActiveAdmin.register Importer do

  permit_params :name, :winery_id

  form do |f|
    f.inputs "Importer" do
      f.input :name
      f.input :wineries, :label => 'Winery', :as => :select, :collection => Winery.all.map{|winery| ["#{winery.name}", winery.id]}
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :wineries_count, sortable: :wineries_count
    column :created_at
    actions
  end

end
