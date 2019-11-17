class CheckoutsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    
    @checkout = Stripe::CreateCheckout.new.run(product)
  end
  
  def success
    redirect_to root_path, notice: 'Thank you for your purchase!'
  end
  
  def cancel
    redirect_to root_path, notice: 'Checkout canceled :('
  end
end
