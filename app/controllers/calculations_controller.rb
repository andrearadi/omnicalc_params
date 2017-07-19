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
        
        @user_interest_rate= (params["a_interest_rate"].to_f)
        @interest= (@user_interest_rate/100)
        @number_of_years= params["a_number_of_years"].to_i
        @loan_amount= params["a_loan_of"].to_f
       
        @payment= ((@interest/1000)*(@loan_amount))/((1-(1+(@interest))**((-1)*@number_of_years)*12))
        
        render("calculations/flexible_payment.html.erb")
    end
    
    def flex_random
        
        @user_min= params["a_low_number"].to_i
        @user_max= params["a_high_number"].to_i
        
        if (@user_max > @user_min)
        puts @random_number= @user_min + rand((@user_max-@user_min))
        
        elsif (@user_min > @user_max)
        puts @random_number= @user_max + rand((@user_min-@user_max))
            
        end
      
      render("calculations/flexible_random_number.html.erb")
    end
    
    
    
    
    def square_new
        
        @user_number= params["a_number"].to_i
        @squared_number= @user_number**2
        
        render("calculations/square_form.html.erb")
    end
        
    def process_square

        @user_number = params["the_user_number"].to_i
        @squared_number = @user_number**2
    
        render("calculations/square_results_template.html.erb")
    end
  
  
    
    def square_root_new
        
        @user_number = params["a_number"].to_i
        @root = @user_number**0.5
        
        render("calculations/square_root_form_template.html.erb")
    end
  
    def process_square_root

        @user_number = params["the_user_number"].to_i
        @root = @user_number**0.5
    
    render("calculations/square_root_results_template.html.erb")
    end
  
  
    def payment_new
    
        @user_interest_rate= (params["a_interest_rate"].to_f)
        @interest= (@user_interest_rate/100)
        @number_of_years= params["a_number_of_years"].to_i
        @loan_amount= params["a_loan_of"].to_f
       
        @payment= (@interest*@loan_amount)/((1-(1+@interest)**((-1)*@number_of_years)*12))
        
    
    render("calculations/payment_form_template.html.erb")
    end
  
    def process_payment

        @user_interest_rate= params["the_user_number3"].to_i
        @interest= (@user_interest_rate/100)
        @number_of_years= params["the_user_number1"].to_i
        @loan_amount= params["the_user_number2"].to_f
       
        @payment= (@interest*@loan_amount)/((1-(1+@interest)**((-1)*@number_of_years)*12))
        
        render("calculations/payment_results_template.html.erb")
    end
  
  
    def random_new
   
    @user_min= params["a_low_number"].to_i
    @user_max= params["a_high_number"].to_i
        
    if (@user_max > @user_min)
    puts @random_number= @user_min + rand((@user_max-@user_min))
        
    elsif (@user_min > @user_max)
    puts @random_number= @user_max + rand((@user_min-@user_max))
    end
    
    render("calculations/random_form_template.html.erb")
    end
  
    def process_random
    @user_min= params["the_user_number1"].to_i
    @user_max= params["the_user_number2"].to_i
        
    if (@user_max > @user_min)
    puts @random_number= @user_min + rand((@user_max-@user_min))
        
    elsif (@user_min > @user_max)
    puts @random_number= @user_max + rand((@user_min-@user_max))
    end
    
    render("calculations/random_results_template.html.erb")
    end
    

end