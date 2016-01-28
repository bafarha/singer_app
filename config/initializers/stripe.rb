if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_CQbixLZkV7LEBnpgNF846j2z',
    :secret_key => 'sk_test_gBnuiqIVWGLjwwZJsmZHm8IQ'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]