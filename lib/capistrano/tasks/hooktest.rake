#!/usr/bin/env ruby
# namespace :deploy do
before 'deploy:starting', :uptime

after 'deploy:updated', 'pygments:pygmentsSetup'

#   end
