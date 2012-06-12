if Gem::Version.new("3.0") < Gem::Version.new(Rails.version) then
  RedmineApp::Application.routes.draw do
    match "projects/:id/customers/:customer_id/:action", :controller => :customers, :via => [:get, :post]
    put "projects/:id/customers/:customer_id", :controller => :customers, :action => :update
    match "projects/:id/customers/:action", :controller => :customers, :via => [:get, :post]
  end
end
