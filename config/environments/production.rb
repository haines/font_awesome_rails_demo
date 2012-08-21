FontAwesomeRailsDemo::Application.configure do
  config.cache_classes = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  config.active_support.deprecation = :notify

  config.assets.compress = true
  config.assets.compile = false
  config.assets.digest = true
  config.serve_static_assets = false

  config.eager_load_paths -= [File.expand_path("app/examples", Rails.root)]
end
