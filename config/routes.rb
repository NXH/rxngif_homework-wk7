Rxngif::Application.routes.draw do
#Create
  get "/pictures/new", :controller => "pictures", :action => "new", :as => "new_picture"
  post '/pictures', :controller => "pictures", :action => "create", :as => "pictures"
  #get("/new_picture_form", { :controller => "pictures", :action => "new"})
  #get("/create_picture", { :controller => "pictures", :action => "create"})
#Read
  get "/pictures/", :controller => "pictures", :action => "index"
  get "/pictures/:id", :controller => "pictures", :action => "show", :as => "picture"
  #get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  #get("/all_pictures", { :controller => "pictures", :action => "index" })
#Edit
  get "/pictures/:id/edit", :controller => "pictures", :action => "edit", :as =>"edit_picture"
  patch "/pictures/:id", :controller => "pictures", :action => "update"
  #get("/update_picture/:id", { :controller => "pictures", :action => "update"})
  #get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
#Delete
  delete "/pictures/:id", :controller => "pictures", :action => "destroy", :as => "destroy_picture"
  #get("/delete_picture/:id", {:controller => "pictures", :action => "destroy"})
  end
