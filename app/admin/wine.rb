ActiveAdmin.register Wine do
  permit_params :name, :winery_id

  index do
    selectable_column
    id_column
    column :name
    column 'Importer Name' do |wine|
      wine.winery.try(:importer).try(:name)
    end
    column :winery, sortable: :winery_id
    column :created_at
    actions
  end
end
