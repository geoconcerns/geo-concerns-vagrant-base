require_relative 'spec_helper_acceptance'

describe 'the File Information Tool Set (FITS)' do

  %w{ unzip curl }.each do |package_name|
    describe package(package_name) do
      it { is_expected.to be_installed }
    end
  end

  describe file('/usr/local/bin/fits.sh') do
    it { should exist }
    it { should be_file }
    it { should be_executable }
  end

  describe command('fits.sh -v') do
    its(:stdout) { should match /0\.10\.0/ }
  end
end
