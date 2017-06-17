require 'active_record'
require 'sqlite3'
require 'yaml'
require_relative '../app/models/maraton'
require_relative '../app/controllers/maratons_controller'
require_relative '../app/views/maratons_view'

configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
