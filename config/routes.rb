Rails.application.routes.draw do

  get "/", controller: "users", action: "index"

  get "/comments/create", controller: "comments", action: "create"

  get "/users", controller: "users", action: "index"
  post "/users/create", controller: "users", action: "create"
  post "/users/update/:path_id", controller: "users", action: "update"
  get "/users/delete/:path_id", controller: "users", action: "destroy"
  get "/users/:path_id", controller: "users", action: "show"

  get "/photos", controller: "photos", action: "index"
  post "/photos/create", controller: "photos", action: "create"
  post "/photos/update/:path_id", controller: "photos", action: "update"
  get "/photos/delete/:path_id", controller: "photos", action: "destroy"
  get "/photos/:path_id", controller: "photos", action: "show"

end
