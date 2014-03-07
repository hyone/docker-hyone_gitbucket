require 'rake'
require 'my_docker_rake/tasks'
require 'rspec/core/rake_task'
include MyDockerRake::Utilities


RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

MyDockerRake::Tasks.new do |c|
  c.containers = [
    {
      name: 'hyone.gitbucket-data',
      image: 'hyone/gitbucket-data',
      protect_deletion: true
    },
    {
      name: 'hyone.gitbucket',
      image: 'hyone/gitbucket',
      ports: [22, 2812, 8080],
      volumes_from: ['hyone.gitbucket-data']
    }
  ]

  unless c.containers.all? { |c| has_image?(c[:image]) }
    task('spec').prerequisites << 'docker:build'
  end
end
