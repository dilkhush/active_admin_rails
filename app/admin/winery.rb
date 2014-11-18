ActiveAdmin.register Winery do

  permit_params :name, :importer_id

  index do
    selectable_column
    id_column
    column :name
    column 'Importer Name'do |winery|
      winery.importer.try(:name)
    end
    column :created_at
    actions
  end
end
