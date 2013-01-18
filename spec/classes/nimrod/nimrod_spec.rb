require 'spec_helper'

describe 'nimrod', :type => :class do

  context 'no parameters' do
    it { should contain_package('nimrod').with_ensure('latest')}
    it { should create_class('nimrod::config')}
    it { should create_class('nimrod::install')}
    it { should create_class('nimrod::service')}
    it { should contain_file('/etc/init/nimrod.conf')}
    it { should contain_file('/opt/nimrod/nimrod.conf').with_content(/default/)}
    it { should contain_file('/opt/nimrod/nimrod.conf').with_content(/\/var\/log\/nimrod.log/)}
    it { should contain_service('nimrod').with_ensure('running').with_enable('true') }
  end
end
