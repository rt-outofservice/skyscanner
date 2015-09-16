execute 'download_splunk' do
  command 'cd /home/vagrant; wget https://www.dropbox.com/s/kf609o7avdz4xc4/splunk_configured.tar.gz'
end

execute 'extract_tar' do
  command 'sudo tar xzvf /home/vagrant/splunk_configured.tar.gz'
  cwd '/'
  not_if { File.exists?("/opt/splunk/bin/splunk") }
end

execute 'start_splunk' do
  command 'sudo /opt/splunk/bin/splunk start --accept-license'
end