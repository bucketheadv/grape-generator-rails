<% module_namespacing do -%>
module API
  class RootAPI < Grape::API
    format :<%= options[:format] %>
    default_format :<%= options[:format] %>

    helpers do
      def logger
        env['app.logger'] # <%= class_name.camelize %>API.logger
      end
    end

    # mount routes
  end
end
<% end %>
