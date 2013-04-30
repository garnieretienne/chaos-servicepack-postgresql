# Use the PGDG (PostgreSQL Global Development Group) apt repository to get the last version of PostgreSQL

# Install PGDG apt repository
# See: https://wiki.postgresql.org/wiki/Apt
template "pgdg.list" do
  path "/etc/apt/sources.list.d/pgdg.list"
  source "pgdg.list.erb"
  owner "root"
  group "root"
  mode 0644
  action :create
  notifies :run, "execute[enable pgdg repository]", :immediately
end

# Download and register the pgdg GPG key and update apt database
execute "enable pgdg repository" do
  command "wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - && apt-get update"
  action :nothing
end