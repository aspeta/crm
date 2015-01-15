class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer= Customer.new
  end

  def edit
    @customer=Customer.find(params[:id])
  end

   def update
     @customer = Customer.find(params[:id])
     if @customer.update_attributes(params.require(:customer).permit(:title, :fname, :mname, :lname, :suffix))
       flash[:notice] = "Customer was updated."
       redirect_to @customer
     else
       flash[:error] = "There was an error saving the customer. Please try again."
       render :edit
     end
   end
end
