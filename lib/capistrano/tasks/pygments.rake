# after 'deploy:updated', :uptime
namespace :pygments do
  ARRAY=%w{config.el packages.el init.el};
  desc "Runs pygments on config files"
  task :pygmentsSetup do
    on roles(:all) do |host|
      info "Running pygments on #{host}"
      ARRAY.each do |file|
        info "running pygmentize on #{file}"
        # info "#{fetch(:deploy_to)}"
        dirPath ="#{release_path}/#{file}"
        # info dirPath
        dirPathHTML="#{dirPath}.html"
        # info dirPathHTML
        execute :pygmentize, "#{dirPath}", "-O", "cssclass=syntax", "-o", "#{dirPathHTML}"

      end
    end
    # invoke(:cpPressri)
  end
end
#!/usr/bin/env ruby
# server 'boneswebhome', roles: [:db, :workers]
# server "boneswebhome.lab.mahoosively.gay", roles: [:web, :app]
# pygmentize tmp.el -O cssclass=syntax -o tmp.html
# after 'deploy:update_code', 'deploy:set_ruby_version'
