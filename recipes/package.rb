template "/etc/yum.repos.d/nginx.repo" do
  owner "root"
  group "root"
  mode "0644"
end

package "nginx" do
  action :install
  options "--enablerepo=nginx"
end

service "nginx" do
  action [:enable]
  supports :start => true, :status => true, :restart => true, :reload => true
end

directory "/etc/nginx" do
  owner "root"
  group "root"
  mode  "0755"
end
