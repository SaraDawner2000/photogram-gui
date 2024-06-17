Rails.application.routes.draw do

  get "/", controller: "users", action: "index"

  get "/users", controller: "users", action: "index"
  post "/users/create", controller: "users", action: "create"
  get "/users/:path_id", controller: "users", action: "show"
  post "/users/update/:path_id", controller: "users", action: "update"
  get "/users/delete/:path_id", controller: "users", action: "destroy"

  get "/photos", controller: "photos", action: "index"
  post "/photos/create", controller: "photos", action: "create"
  get "/photos/:path_id", controller: "photos", action: "show"
  post "/photos/update/:path_id", controller: "photos", action: "update"
  get "/photos/delete/:path_id", controller: "photos", action: "destroy"

end
