# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ProductCategory_session',
  :secret      => '557dc352135ba8b4928b730ccfd598220040bcc55acb5d7571846441f56928677e590422af7c0d24de3a702e649ea8c3bca03da1f46c077f9df2e96a7475b988'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
