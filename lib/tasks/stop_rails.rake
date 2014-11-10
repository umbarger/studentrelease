desc 'stop rails'
task :stop do
  pid_file = 'tmp/pids/server.pid'
  pid = File.read(pid_file).to_i
  File.delete pid_file
end
