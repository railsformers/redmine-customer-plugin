if Gem::Version.new("3.0") < Gem::Version.new(Rails.version) then
  RedmineApp::Application.routes.draw do
    resources :customers
  end
end
