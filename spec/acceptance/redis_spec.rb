
require_relative 'spec_helper_acceptance'

describe 'the Redis data structure server' do

  describe package('redis-server') do
    it { is_expected.to be_installed }
  end

  describe service('redis-server') do
    it { should be_enabled }
    it { should be_running }
  end
end
