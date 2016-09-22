<% module_namespacing do -%>
class API::<%= options[:version].to_s.camelize %>::<%= class_name %>API < API::RootAPI
  version :<%= options[:version] %>
end
<% end %>
