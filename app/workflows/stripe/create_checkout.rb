module Stripe
  class CreateCheckout
    def run(product_for_purchase)
      ::Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)

      session = ::Stripe::Checkout::Session.create(
        billing_address_collection: 'required',
        payment_method_types: ['card'],
        line_items: [{
          name: product_for_purchase.title,
          description: product_for_purchase.description,
          images: [product_for_purchase.image.service_url],
          amount: product_for_purchase.price_cents,
          currency: 'usd',
          quantity: 1,
        }],
        success_url: 'http://cardboard-kingdom.ngrok.io/checkouts/success?session_id={CHECKOUT_SESSION_ID}',
        cancel_url: 'http://cardboard-kingdom.ngrok.io/checkouts/cancel',
      )
    end
  end
end
