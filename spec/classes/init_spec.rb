require 'spec_helper'
describe 'sanity' do

  context 'with defaults for all parameters' do
    it { should contain_class('sanity') }
  end
end
