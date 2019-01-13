require 'spec_helper'

describe 'autofs::config' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      it { is_expected.to contain_class('autofs::config') }

      it do
        is_expected.to contain_file('/etc/sysconfig').with(
          'ensure' => 'directory',
          'owner' => 'root',
          'group' => 'root',
          'mode' => '0755',
        )
      end

      it do
        is_expected.to contain_file('/etc/auto_home').only_with(
          'ensure' => 'absent',
        )
      end

      it do
        is_expected.to contain_file('/etc/auto_share').only_with(
          'ensure' => 'absent',
        )
      end

      it do
        is_expected.to contain_file('/etc/auto.home').only_with(
          'ensure' => 'absent',
        )
      end

      it do
        is_expected.to contain_file('/etc/auto.share').only_with(
          'ensure' => 'absent',
        )
      end

      it do
        is_expected.to contain_file('/etc/autofs_ldap_auth.conf').with(
          'ensure' => 'file',
          'path' => '/etc/autofs_ldap_auth.conf',
          'owner' => 'root',
          'group' => 'root',
        )
      end

      it { is_expected.to contain_file('/etc/autofs_ldap_auth.conf').that_requires(['Package[autofs]']) }

      it do
        is_expected.to contain_file('/etc/sysconfig/autofs').with(
          'ensure' => 'file',
          'path' => '/etc/sysconfig/autofs',
          'owner' => 'root',
          'group' => 'root',
          'mode' => '0600',
        )
      end

      it { is_expected.to contain_file('/etc/sysconfig/autofs').that_requires(['File[/etc/sysconfig]', 'Package[autofs]']) }

    end
  end
end
