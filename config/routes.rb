Rails.application.routes.draw do

  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "sqrt" })
  get("/square/:number", { :controller => "calculations", :action => "sqr" })
  get("/payment/:i/:m/:principal", { :controller => "calculations", :action => "payment" })



end
