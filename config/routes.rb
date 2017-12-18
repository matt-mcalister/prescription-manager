Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Patient CRUD
  get "patients", to: 'patients#index'

  get "patients/new", to: 'patients#new'

  post "patients", to: 'patients#create'

  get 'patients/:id', to: 'patients#show', as: "patient"

  get 'patients/:id/edit', to: 'patients#edit', as: "edit_patient"

  put 'patients/:id', to: 'patients#update'

  get 'patients/:id/delete', to: 'patients#delete', as: "delete_patient"

  # doctor CRUD

  get "doctors", to: 'doctors#index'

  get "doctors/new", to: 'doctors#new'

  post "doctors", to: 'doctors#create'

  get 'doctors/:id', to: 'doctors#show', as: "doctor"

  get 'doctors/:id/edit', to: 'doctors#edit', as: "edit_doctor"

  put 'doctors/:id', to: 'doctors#update'

  get 'doctors/:id/delete', to: 'doctors#delete', as: "delete_doctor"

  # Pres C_UD, through patients

  get "patients/:id/new_prescription", to: 'patients#new_prescription'

  post "patients/:id/:prescription_id", to: 'patients#create_prescription'



end
