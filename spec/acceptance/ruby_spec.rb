require_relative 'spec_helper_acceptance'

describe 'ruby aptitude packages' do
  describe package('ruby1.9.1-dev') do
    it { is_expected.to be_installed }
  end
end

describe 'Ruby Version Manager' do
  
  %w{ curl gnupg }.each do |package_name|
    describe package(package_name) do
      it { is_expected.to be_installed }
    end
  end

  describe file('/usr/local/rvm/bin/rvm') do
    it { should exist }
    it { should be_file }
    it { should be_executable }
  end
end
