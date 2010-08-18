Merb.logger.info("Compiling routes...")

Merb::Router.prepare do
  match('/').to(:controller => 'dashboard', :action => 'index')
end
