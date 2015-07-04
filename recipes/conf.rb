# put conf files
directory "/etc/nginx" do
  owner "root"
  group "root"
  mode  "0755"
  action :create
end

%w{
nginx.conf
}.each do |filename|
  template "/etc/nginx/#{filename}" do
    source filename
    owner "root"
    group "root"
    mode "0644"
    notifies :start,  "service[nginx]"
    notifies :reload, "service[nginx]"
  end
end
