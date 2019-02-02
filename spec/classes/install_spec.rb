require 'spec_helper'

describe 'autofs::install' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('autofs::install') }

      it do
        is_expected.to contain_package('autofs').with(
          'ensure' => 'present',
        )
      end
    end
  end
end
