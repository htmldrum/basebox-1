require File.dirname(__FILE__) + "/../.common/session.rb"

CENTOS_SESSION =
  COMMON_SESSION.merge({ :os_type_id => 'RedHat_64',
                         :boot_cmd_sequence =>
                         [ 'linux text ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
                         :kickstart_file => "ks.cfg",
                         :shutdown_cmd => "/sbin/halt -h -p",
                         :postinstall_files => [ "chef-client.sh",
                                                 "vagrant.sh",
                                                 "cleanup.sh",
                                                 "minimize.sh" ] })