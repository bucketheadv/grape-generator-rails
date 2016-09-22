module Grape
  module Generators
    class GrapeGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      class_option :version, default: Grape::Generator::Rails.config.version

      def copy_required_file
        template 'model_api.rb', "app/apis/api/#{options[:version]}/#{file_name}_api.rb"
        inject_into_file "app/apis/api/root_api.rb", after: "\# mount routes\n" do<<-RUBY
    mount API::#{options[:version].to_s.camelize}::#{class_name}API
          RUBY
        end
      end
    end
  end
end
