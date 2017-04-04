#map.connect ':controller/:action/:id'
RedmineApp::Application.routes.draw do
# ActionController::Routing::Routes.draw do |map|
#  map.connect 'projects/:project_id/meetings/:action', :controller => 'meetings'
#  map.connect 'meetings/:action/:id', :controller => 'meetings'
#  map.connect 'projects/:id/meetings_settings/:action', :controller => 'meetings_settings'
  match 'projects/:project_id/meetings/:action', :controller => 'meetings', via: [:get, :post, :patch, :delete,:put]
  match 'meetings/:action/:id', :controller => 'meetings', via: [:get, :post, :patch]
  match 'projects/:id/meetings_settings/:action', :controller => 'meetings_settings', via: [:get, :post, :patch]

end
