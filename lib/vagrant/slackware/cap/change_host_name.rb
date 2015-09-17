module VagrantPlugins
  module GuestSlackware
    module Cap
      class ChangeHostName
        def self.change_host_name(machine, name)
          if !machine.communicate.test("hostname | grep '^#{name}$'")
            machine.communicate.sudo("sh -c \"echo '#{name}' > /etc/HOSTNAME\"")
            machine.communicate.sudo("hostname #{name}")
            machine.communicate.sudo("echo 127.0.0.1 '#{name}' >> /etc/hosts")
          end
        end
      end
    end
  end
end
