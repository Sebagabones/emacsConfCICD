#!/usr/bin/env ruby
# namespace :deploy do
before 'deploy:starting', :uptime

after 'deploy:updated', 'pygments:pygmentsSetup'
# after 'deploy:symlink:release', :cpPressri
# after # 'deploy:cleanup',
after 'deploy:finished', :gitpush

#   end
