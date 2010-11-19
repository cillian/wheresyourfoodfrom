# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_foodfromafar_session',
  :secret      => '00566be559e9610cca82d302e2143abc00dc7d7209b16a084642ad5d81e8e412749b2982f5cc21254ca94a0f2e570a3701bafdc1efc7f6d6bb821ec0d277212d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
