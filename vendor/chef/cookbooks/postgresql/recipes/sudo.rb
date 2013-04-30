# Sudo rule to allow addons user to execute psql commands

template "postgresql sudo" do
  path "/etc/sudoers.d/addons"
  source "sudo.erb"
  owner "root"
  group "root"
  mode "0440"
  action :create
end