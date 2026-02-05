Rails.application.routes.draw do
  # Routes for the Industry resource:
  # 
  root to: "home#index"

  # CREATE
  post("/insert_industry", { :controller => "industries", :action => "create" })

  # READ
  get("/industries", { :controller => "industries", :action => "index" })

  get("/industries/:path_id", { :controller => "industries", :action => "show" })

  # UPDATE

  post("/modify_industry/:path_id", { :controller => "industries", :action => "update" })

  # DELETE
  get("/delete_industry/:path_id", { :controller => "industries", :action => "destroy" })

  #------------------------------

  # Routes for the Skill resource:

  # CREATE
  post("/insert_skill", { :controller => "skills", :action => "create" })

  # READ
  get("/skills", { :controller => "skills", :action => "index" })

  get("/skills/:path_id", { :controller => "skills", :action => "show" })

  # UPDATE

  post("/modify_skill/:path_id", { :controller => "skills", :action => "update" })

  # DELETE
  get("/delete_skill/:path_id", { :controller => "skills", :action => "destroy" })

  #------------------------------

  devise_for :users
  # Routes for the Hr emplyee resource:

  # CREATE
  post("/insert_hr_emplyee", { :controller => "hr_emplyees", :action => "create" })

  # READ
  get("/hr_emplyees", { :controller => "hr_emplyees", :action => "index" })

  get("/hr_emplyees/:path_id", { :controller => "hr_emplyees", :action => "show" })

  # UPDATE

  post("/modify_hr_emplyee/:path_id", { :controller => "hr_emplyees", :action => "update" })

  # DELETE
  get("/delete_hr_emplyee/:path_id", { :controller => "hr_emplyees", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
end
