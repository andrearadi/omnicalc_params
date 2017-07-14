Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
  
  get("/flexible/square_root/:a_number", { :controller => "calculations", :action => "flex_root"})
  
  get("flexible/payment/:a_interest_rate/:a_number_of_years/:a_loan_of", { :controller => "calculations", :action => "flex_payment"})
 
  get("flexible/random/:a_low_number/:a_high_number", { :controller => "calculations" , :action => "flex_random"})

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
