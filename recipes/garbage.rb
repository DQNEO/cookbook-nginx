# remove russian files
%{
koi-utf
koi-win
win-utf
}.each do |filename|
  file "/etc/nginx/#{filename}" do
    action :delete
  end
end

# remove scgi, uwsgi files
%{
scgi_params
uwsgi_params
}.each do |filename|
  file "/etc/nginx/#{filename}" do
    action :delete
  end
end

directory "/etc/nginx/conf.d" do
  action :delete
  recursive true
end
