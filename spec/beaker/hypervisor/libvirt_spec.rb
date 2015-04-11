require 'spec_helper'

module Beaker
  describe Libvirt do
    let( :options ) { make_opts.merge({ 'logger' => double().as_null_object }) }
    let( :libvirt ) { Beaker::Libvirt.new( @hosts, options ) }

    before :each do
      @hosts = make_hosts( {
        :cloud_provider => 'DigitalOcean',
        :user => 'vagrant',
        :password => 'vagrant',
        :qcow2 => '/home/nibz/projects/pcci/nocloudprimaryubuntu.qcow2',
        :private_key_file => '/home/nibz/sandbox/vagrant_private.key'
        }
      )
    end

    it "can provision a set of hosts" do
      allow(File).to receive(:read).with('/home/nibz/sandbox/vagrant_private.key').and_return('Key')
      libvirt.provision
    end

  end
end
