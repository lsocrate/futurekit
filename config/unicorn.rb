root = "/home/inspiring/apps/futurekit"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"
listen "/tmp/unicorn.futurekit.sock"

#worker_processes Integer(ENV["WEB_CONCURRENCY"] || 2)
worker_processes 2
timeout 30
preload_app true

# Force the bundler gemfile environment variable to
# reference the capistrano "current" symlink
before_exec do |_|
  ENV["BUNDLE_GEMFILE"] = File.join(root, 'Gemfile')
end

before_fork do |server, worker|
  # @sidekiq_pid ||= spawn("bundle exec sidekiq -d -c 2 -L #{root}/log/sidekiq.log -e production")
  
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  # Sidekiq.configure_client do |config|
  #   config.redis = { :size => 1 }
  # end
  # Sidekiq.configure_server do |config|
  #   config.redis = { :size => 5 }
  # end

  child_pid = server.config[:pid].sub(/pid$/, "worker.#{worker.nr}.pid")
  system("echo #{Process.pid} > #{child_pid}")

  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
