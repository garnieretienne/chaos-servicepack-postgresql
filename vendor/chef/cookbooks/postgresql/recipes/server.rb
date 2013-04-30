# Install postgresql server from package manager and configure the service.

# Install postgresql server from package manager
package "postgresql server" do
  package_name "postgresql"
  action :upgrade
end

# Ensure the service is running
service "postgresql" do
  service_name "postgresql"
  action :enable
end

# Generate postgresql configuration file
template "postgresql conf" do
  path "/etc/postgresql/9.2/main/postgresql.conf"
  source "postgresql.conf.erb"
  owner "root"
  group "root"
  mode 0600
  notifies :restart, 'service[postgresql]', :immediately
end
