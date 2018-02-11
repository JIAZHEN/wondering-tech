Rails.application.routes.draw do
  root "static_pages#home"

  post "contact_message" => "static_pages#contact_message"
end
