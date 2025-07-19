Rails.application.routes.draw do
  root "links#new"
  post "/shorten", to: "links#create"
  get "/:short", to: "links#show"
end
