module AtozSso
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates Generator initializer for your application"

      def copy_initializer
        template "sso_initializer.rb", "config/initializers/atoz_sso.rb"

        puts "Install complete! mantap cuks!"
      end
    end
  end
end
