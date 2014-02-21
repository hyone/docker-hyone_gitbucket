require 'rake'
require 'my_docker_rake/tasks'
require 'rspec/core/rake_task'
include MyDockerRake::Utilities


RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

MyDockerRake::Tasks.new do |c|
  c.image            = 'hyone/gitbucket'
  c.container        = 'hyone.gitbucket'
  c.run_options      = '-p 22 -p 2812 -p 8080'

  c.data_image       = 'hyone/gitbucket-data'
  c.data_container   = 'hyone.gitbucket-data'

  unless has_image?(c.image)
    task('spec').prerequisites << 'docker:build'
  end
end
