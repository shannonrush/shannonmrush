# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_shannonmrush_session',
  :secret      => '38a1699d57406418f14fb21f622fcf6b47a220204377a09e7417bd6f34e16b74d3b54ee1e3ca6d178329e84645a5f406af64b7e3731d5439aea409e74fe74f26'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
