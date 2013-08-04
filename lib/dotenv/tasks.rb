desc 'Load environment settings from .env'
task :dotenv do
  require 'dotenv'
  Dotenv.load [
               ".env.#{ENV['RAILS_ENV']}",
               '.env',
              ].detect{|file|File.exist?(file)}
end

task :environment => :dotenv
