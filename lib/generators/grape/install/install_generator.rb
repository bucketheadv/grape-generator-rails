module Grape
  module Generators
    class InstallGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      class_option :format, default: :json
      class_option :version, default: :v1

      def copy_required_file
        template 'root_api.rb', 'app/apis/api/root_api.rb'
        template 'initializer.rb', 'config/initializers/grape-generator-rails.rb'
        template 'routes.rake', 'lib/tasks/grape_routes.rake'

        inject_into_file "config/routes.rb", after: "Rails.application.routes.draw do\n" do<<-RUBY
  mount API::RootAPI => '/api'
          RUBY
        end
      end
    end
  end
end
