Rails.application.routes.draw do

  get "/", controller: "users", action: "index"

  get "/comments/create", controller: "comments", action: "create"

  get "/users", controller: "users", action: "index"
  get "/users_create", controller: "users", action: "create"
  post "/users_update/:path_id", controller: "users", action: "update"
  get "/users_delete/:path_id", controller: "users", action: "destroy"
  get "/users/:path_id", controller: "users", action: "show"

  get "/photos", controller: "photos", action: "index"
  post "/photos_create", controller: "photos", action: "create"
  post "/photos_update/:path_id", controller: "photos", action: "update"
  get "/photos_delete/:path_id", controller: "photos", action: "destroy"
  get "/photos/:path_id", controller: "photos", action: "show"

end
