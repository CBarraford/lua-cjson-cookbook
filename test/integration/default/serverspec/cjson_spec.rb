
require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

describe 'lua' do

  it 'is lua installed' do
    expect(command('which lua')).to return_exit_status 0
  end

  it 'is lua-cjson installed' do
    expect(command('echo "cjson = require \'cjson\'" | lua - ')).to return_exit_status 0
  end

end
