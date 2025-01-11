#!/usr/bin/env ruby


desc "Runs ssri"
task :ssriRun do
  on roles(:all) do |host|
    info "Running yarb on #{host}"
    within "/var/www/mahoosively.gay/public_html/astroSite/cap/current/" do
      info "Building in /var/www/mahoosively.gay/public_html/astroSite/cap/current/"
      execute :yarn, "run", "build"
    end
  end
  invoke(:cpCurrentReleaseToPM2Dir)

end

