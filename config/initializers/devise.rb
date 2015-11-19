Devise.setup do |config|
  # Required so users don't lose their carts when they need to confirm.
  config.allow_unconfirmed_access_for = 1.days

  # Fixes the bug where Confirmation errors result in a broken page.
  config.router_name = :spree

  # Add any other devise configurations here, as they will override the defaults provided by spree_auth_devise.
end

Devise.secret_key = '0a2fd972ded963b0837a2ab405db0f249d78735124908d41727005a3d2c459a8bc636b998086311eabb3838b4
06293d56dd2669a57ba1ce3b962c44e6f775485'
