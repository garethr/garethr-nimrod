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
    it { should contain_file('/opt/nimrod/nimrod.conf').with_content(/8888/)}
    it { should contain_service('nimrod').with_ensure('running').with_enable('true') }

    context 'passing a custom port' do
      let(:params) { {:port => 8990} }
      it { should contain_file('/opt/nimrod/nimrod.conf').with_content(/8990/)}
    end

    context 'passing custom log files' do
      let(:params) { {:log_files => {
        'ident_1' => '/var/log/ident.log',
        'ident_2' => '/var/log/ident2.log'}
      } }
      it { should contain_file('/opt/nimrod/nimrod.conf').with_content(/ident_1/)}
      it { should contain_file('/opt/nimrod/nimrod.conf').with_content(/ident_2/)}
    end
  end
end
