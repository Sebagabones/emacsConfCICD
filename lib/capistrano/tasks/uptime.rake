#!/usr/bin/env ruby


desc "Report Uptimes"
task :uptime do
  on roles(:all) do |host|
    info "Running task on #{host}, deploying at #{fetch(:deploy_to)}"
    # info "#{fetch(:deploy_to)} Running task on #{host}"
  # on server do |host|
    # execute :uptime
    # info "Host #{host} (#{host.roles.to_a.join(', ')}):\t#{capture(:uptime)}"
        info "Host #{host} (#{host.roles.to_a.join(', ')}):\t#{capture(:uptime)}"
  end
end
# after 'deploy:updated', :uptime
# server 'boneswebhome', roles: [:db, :workers]
# server "boneswebhome.lab.mahoosively.gay", roles: [:web, :app]
