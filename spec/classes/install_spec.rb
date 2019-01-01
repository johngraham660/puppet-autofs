require 'spec_helper'

describe 'autofs::install' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      # Define an array for packages
      let(:packages) { %w(autofs) }

      it { is_expected.to compile.with_all_deps }
      # Iterate over the packages array
      it do
        packages.each do |pkg|
          is_expected.to contain_package(pkg).with(ensure: 'present')
        end
      end

    end
  end
end
