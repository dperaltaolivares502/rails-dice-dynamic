Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "home"})
  get("/dice/2/6", { :controller => "zebra", :action => "tds"})
  get("/dice/2/10", { :controller => "zebra", :action => "tdt"})
  get("/dice/1/20", { :controller => "zebra", :action => "odt"})
  get("/dice/5/4", { :controller => "zebra", :action => "fdf"})
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "zebra", :action => "dyno" })
end
