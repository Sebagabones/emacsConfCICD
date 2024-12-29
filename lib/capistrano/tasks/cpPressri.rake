#!/usr/bin/env ruby

newarray=%w{config.el.html packages.el.html init.el.html};
desc "Copies files to right location before ssri"
task :cpPressri do
  on roles(:all) do |host|
    # info "Running pygments on #{host}"
    newarray.each do |file|
      info "Copying #{file}"
      dirPath ="#{release_path}/#{file}"

      # info "running pygmentize on #{file}"
      # info "#{fetch(:deploy_to)}"
    # info "#{fetch(:deploy_to)} Running task on #{host}"
  # on server do |host|
      # execute :cat, "#{fetch(:deploy_to) + '/current/' + file}"
      # dirPath ="#{release_path}/#{file}"
      # info dirPath
      # dirPathHTML="#{dirPath}.html"
      # info dirPathHTML
      execute :cp, "#{dirPath}", "/var/www/mahoosively.gay/public_html/mahoosivelygay/templates/"

    # info "Host #{host} (#{host.roles.to_a.join(', ')}):\t#{capture(:uptime)}"
        # info "Host #{host} (#{host.roles.to_a.join(', ')}):\t#{capture(:uptime)}"
    end
  end
  invoke(:ssriRun)
end
