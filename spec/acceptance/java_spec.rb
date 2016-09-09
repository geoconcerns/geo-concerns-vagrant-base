require_relative 'spec_helper_acceptance'

describe 'the Oracle Java 8 Runtime Environment' do

  describe ppa('ppa:webupd8team/java') do
    it { should exist }
    it { should be_enabled }
  end
  
  %w{ oracle-java8-installer oracle-java8-set-default}.each do |package_name|
    describe package(package_name) do
      it { is_expected.to be_installed }
    end
  end

  describe file('/usr/bin/java') do
    it { should exist }
    it { should be_file }
    it { should be_executable }
  end
end
