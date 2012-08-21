FontAwesomeRailsDemo::Application.configure do
  config.cache_classes = false

  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false

  config.active_support.deprecation = :log

  config.assets.compress = false
  config.assets.debug = true

  config.whiny_nils = true
  config.action_dispatch.best_standards_support = :builtin
end
