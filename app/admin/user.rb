ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :role
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :role, :as => :select, :collection => ['user', 'admin']
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  show do |user|
    attributes_table do
      row :id
      row :name
      row :email
      row :role
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
