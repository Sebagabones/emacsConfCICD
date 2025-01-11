#!/usr/bin/env ruby


desc "Copies files to right location for pm2 to use"
task :cpCurrentReleaseToPM2Dir do
  on roles(:all) do |host|
      dirPath ="/var/www/mahoosively.gay/public_html/astroSite/cap/current/."
      execute :cp, "-a",  "#{dirPath}", "/var/www/mahoosively.gay/public_html/astroSite/pm2Dir"
  end
end
