module API
  class Component < Rails::Component
    isolate_namespace API

    initializer "test" do |app|
      # app.config.reload_plugins = true 
      # raise config.eager_load_namespace.inspect
      # raise app.config.autoload_paths.inspect
      #
      # raise _all_autoload_paths.inspect
      # raise _all_autoload_once_paths.inspect

    end
  end
end

