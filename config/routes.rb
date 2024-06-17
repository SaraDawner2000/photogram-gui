Rails.application.routes.draw do
  get "/", controller: "users", action: "index"

  get "/users", controller: "users", action: "index"
  post "/users/create", controller: "users", action: "create"
  get "/users/:path_id", controller: "users", action: "show"
  post "/users/update/:path_id", controller: "users", action: "update"
  get "/users/delete/:path_id", controller: "users", action: "destroy"

  get "/comments", controller: "comments", action: "index"
  post "/comments/create", controller: "comments", action: "create"
  get "/comments/:path_id", controller: "comments", action: "show"
  post "/comments/update/:path_id", controller: "comments", action: "update"
  get "/comments/delete/:path_id", controller: "comments", action: "destroy"

  get "/photos", controller: "photos", action: "index"
  post "/photos/create", controller: "photos", action: "create"
  get "/photos/:path_id", controller: "photos", action: "show"
  post "/photos/update/:path_id", controller: "photos", action: "update"
  get "/photos/delete/:path_id", controller: "photos", action: "destroy"

  get "/likes", controller: "likes", action: "index"
  post "/likes/create", controller: "likes", action: "create"
  get "/likes/:path_id", controller: "likes", action: "show"
  post "/likes/update/:path_id", controller: "likes", action: "update"
  get "/likes/delete/:path_id", controller: "likes", action: "destroy"

  get "/follow_requests", controller: "follow_requests", action: "index"
  post "/follow_requests/create", controller: "follow_requests", action: "create"
  get "/follow_requests/:path_id", controller: "follow_requests", action: "show"
  post "/follow_requests/update/:path_id", controller: "follow_requests", action: "update"
  get "/follow_requests/delete/:path_id", controller: "follow_requests", action: "destroy"

end
