# remove russian files
%w{
koi-utf
koi-win
win-utf
}.each do |filename|
  file "/etc/nginx/#{filename}" do
    action :delete
  end
end

# remove scgi, uwsgi files
%w{
scgi_params
uwsgi_params
}.each do |filename|
  file "/etc/nginx/#{filename}" do
    action :delete
  end
end

=begin
directory "/etc/nginx/conf.d" do
  action :delete
  recursive true
end
=end
