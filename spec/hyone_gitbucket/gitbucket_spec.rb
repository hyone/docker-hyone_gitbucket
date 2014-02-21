require 'spec_helper'

%w{
  openjdk-7-jre
  tomcat7
}.each do |name|
  describe package(name) do
    it { should be_installed }
  end
end

describe file('/var/lib/tomcat7/webapps/gitbucket.war') do
  it { should be_file }
end

describe file('/var/lib/gitbucket') do
  it { should be_directory }
  it { should be_owned_by 'tomcat7' }
end

describe port(8080) do
  it { should be_listening }
end
