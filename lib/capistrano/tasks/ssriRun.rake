#!/usr/bin/env ruby

mainDirLoc = "/var/www/mahoosively.gay/public_html/mahoosivelygay"
desc "Runs ssri"
task :ssriRun do
  on roles(:all) do |host|
    info "Running SSRI on #{host}"
    staging = "#{mainDirLoc}/staging"
    templates = "#{mainDirLoc}/templates"
    sites = "#{mainDirLoc}/sites"
    # execute :ssri, "-h"
    execute :ssri, "-d", "#{staging}", "-t", "#{templates}", "-o", "#{sites}", "--no-warnings"

  end
end
