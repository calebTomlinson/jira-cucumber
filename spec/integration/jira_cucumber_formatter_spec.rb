require 'spec_helper'
require 'jira-cucumber'

describe JiraFormatter do  
  it 'gets instantiated' do
    JiraFormatter::Formatter.should_receive(:new)     
    run_feature('basic_functionality')
  end
  
  
  
  it 'uses jiralicious' do
    pending
    run_feature('basic_functionality')
    x=1
  end
end

