#!/usr/bin/env ruby
# namespace :deploy do
before 'deploy:starting', :uptime

after 'deploy:updated', 'pygments:pygmentsSetup'
after 'deploy:cleanup', :cpPressri
after 'deploy:finished', :gitpush

#   end
