# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_empire-new_session',
  :secret      => 'f28bab90a65005ac27c4d41f0d9fddc9f5cd9cd90972a715e8e6db5bccee73315efc4d6baaf6de38e67d2b4ca0ef0f2153a9f7d2c269b90aa5f01be1ffd982e3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
