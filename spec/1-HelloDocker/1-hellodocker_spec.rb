require 'spec_helper'
require 'docker'

describe '1-hellodocker-image' do
  before(:all) do
    @image = Docker::Image.build_from_dir('challenges/1-HelloDocker', 'tag' => '1-hellodocker')
    @image.tag('repo' => '1-hellodocker', 'force' => true)
    set :os, family: :debian
    set :backend, :docker
    set :docker_image, @image.id
  end

  #it "installs the right version of Ubuntu" do
    #expect(os_version).to include("Ubuntu 14")
  #end

  it "should exist" do
    expect(@image).not_to be_nil
  end
 
  #def os_version
    #command("lsb_release -a").stdout
  #end
end

describe '1-hellodocker-container' do
  before(:all) do
    @container = Docker::Container.create('Image' => '1-hellodocker')
    @container.start
  end

  it "should echo Hello World!" do
    expect(@container.logs(stdout: true)).to include("Hello World!")
  end
end
