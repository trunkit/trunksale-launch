silence_warnings do
    begin
        require 'pry'
        IRB = Pry
    rescue LoadError
    end
end

Prelaunchr::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.default_url_options = { host: 'www.thetrunksale.com', only_path: false }

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings   = {
    address:               "smtp.sendgrid.net",
    port:                  587,
    domain:                "thetrunksale.com",
    user_name:             "TheTrunksale",
    password:              "Bubbagump101",
    authentication:        :plain,
    enable_startttls_auto: true
  }
end
