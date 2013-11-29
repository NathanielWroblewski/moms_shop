MyApp::Application.configure do
  config.middleware.use '::Rack::Auth::Basic' do |u, p|
    [u, p] == [USER, PASSWORD]
  end
end
