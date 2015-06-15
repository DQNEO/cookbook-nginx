# put conf files
%w{
nginx.conf
conf.d/default.conf
}.each do |filename|
  template "/etc/nginx/#{filename}" do
    source filename
    owner "root"
    group "root"
    mode "0644"
  end
end
