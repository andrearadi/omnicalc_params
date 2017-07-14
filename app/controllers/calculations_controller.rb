class CalculationsController < ApplicationController
    def flex_square
        
        @user_number= params["a_number"].to_i
        @squared_number= @user_number**2
        
        render("calculations/flexible_square_template.html.erb")
    end
    
    def flex_root
        
        @user_number= params["a_number"].to_i
        @root= @user_number**0.5
        
        render("calculations/flexible_root_template.html.erb")
    end
    
    def flex_payment
        
        @user_interest_rate= ((params["a_interest_rate"].to_f)/100)
        @number_of_years= params["a_number_of_years"].to_i
        @loan_amount= params["a_loan_of"].to_f
       
        
        @payment= ((@user_interest_rate*@loan_amount)/(1-(1+@user_interest_rate)**((-1*@number_of_years)*12))/1000)
        
        render("calculations/flexible_payment.html.erb")
    end
    
    def flex_random
        
        @user_min= params["a_low_number"]
        @user_max= params["a_high_number"]
        
        
        @random_number= rand(100)
      
      render("calculations/flexible_random_number.html.erb")
    end

end