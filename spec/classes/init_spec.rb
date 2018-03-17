require 'spec_helper'
describe 'motd' do

  context 'with defaults for all parameters' do
    it { should contain_class('motd') }
  end
  context 'testing if file is created' do
    it do 
      is_expected.to contain_file('/etc/motd').with({
        'ensure'  => 'present',
        'owner'   => 'root',
        'content' => 'WTF',
       })
    end
  end
end
