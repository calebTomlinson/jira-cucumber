require 'spec_helper'
require 'jira_formatter/jira_formatter'

describe Formatter do
  it 'reports relevant tags for features' do
    pending
    @reporter = double('Reporter')
    Reporter.should_receive(:new).and_return(@reporter)
    reporter.should_receive
    run_feature('basic_functionality')
  end
  
  
  
  it 'responds to every feature element' do
    pending
    
  end
  
end