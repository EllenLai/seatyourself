class CustomersController < ApplicationController

  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(customer_params)
  	if @customer.save
  		redirect_to restaurants_url, :notice => "Congratulations! You're now signed up!"
  	else
  		render "new"
  	end
  end

 end

private

def customer_params
	params.require(:customer).permit(:first_name, :last_name, :email, :telephone, :password, :password_confirmation)

end
