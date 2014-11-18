ActiveAdmin.register Wine do
  permit_params :name, :winery_id

  filter :winery
  filter :name
  filter :winery_importer_id,
    :as => :select,
    :label => 'Importer',
    :collection => proc { Importer.order(:name) }
  filter :created_at

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
