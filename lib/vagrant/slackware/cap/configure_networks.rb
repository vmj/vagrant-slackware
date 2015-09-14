require "tempfile"

require "vagrant/util/template_renderer"

module VagrantPlugins
  module GuestSlackware
    module Cap
      class ConfigureNetworks
        include Vagrant::Util

        def self.configure_networks(machine, networks)
          machine.communicate.tap do |comm|
            networks.each do |network|
              comm.sudo("ifconfig eth#{network[:interface]} #{network[:ip]} netmask #{network[:netmask]} up")
            end
          end
        end
      end
    end
  end
end
