<% module_namespacing do -%>
Grape::Generator::Rails.configure do |config|
  config.format = :<%= options[:format] %>
  config.version = :<%= options[:version] %>
end
<% end %>
