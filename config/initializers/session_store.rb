# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_salaryman_session',
  :secret      => '9054277de84e94815dad71e3dd0ea781d371ac08c0925191c8f23d253315e1c3beac2cea7ab141963833c7f38bfb8ca1a28c5c05ad8ec06807eb9188cfcb83c5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
