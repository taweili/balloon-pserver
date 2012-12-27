APP_ROOT=File.expand_path(__FILE__ + "/../")

God.watch do |w|
  w.name = "password-server"
  w.start = "bundle exec ruby server.rb"
  w.dir = "#{APP_ROOT}"
  w.keepalive
end
