require 'spec_helper'

describe file('/usr/bin/lv') do
  it { should be_file }
  it { should be_mode 555 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
