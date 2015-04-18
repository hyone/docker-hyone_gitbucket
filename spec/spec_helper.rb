require 'serverspec'
require 'docker'

RSpec.configure do |config|
  config.before(:all) do
    image = Docker::Image.build_from_dir(
      File.expand_path '../../dockerfiles/hyone_gitbucket', __FILE__
    )

    set :os, family: :debian
    set :backend, :docker
    set :docker_url, ENV['DOCKER_HOST']
    set :docker_image, image.id
  end
end
