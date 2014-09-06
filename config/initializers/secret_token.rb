# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Prelaunchr::Application.config.secret_token = ENV["RAILS_SECRET"] || '098733ebfaa5ce673ef52cee3ff4e47260af075d20818b5140094d8917ba2e8170886537cf45d73272041aa99ef5878f57090be239fe12addb128bbd58a128b0'