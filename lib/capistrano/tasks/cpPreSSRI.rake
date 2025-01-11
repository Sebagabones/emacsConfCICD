#!/usr/bin/env ruby

newarray=%w{config.el packages.el init.el};
desc "Copies files to right location before ssri"
task :cpPressri do
  on roles(:all) do |host|
    newarray.each do |file|
      info "Copying #{file}"
      dirPath ="#{release_path}/#{file}"
      execute :cp, "#{dirPath}", "/var/www/mahoosively.gay/public_html/astroSite/pm2Dir/public/codeFiles/emacsConfFiles"
    end
  end
  # invoke(:ssriRun)
end
