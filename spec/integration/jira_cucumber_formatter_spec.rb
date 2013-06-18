require 'spec_helper'
require 'jira-cucumber'


  def run_feature(feature_name)
    require 'cucumber/cli/main'
    Cucumber::Cli::Main.execute(['features/basic_functionality.feature', '--format', 'JiraFormatter::Formatter'])
  end
describe JiraFormatter do
  it 'passes' do
  end
  
  it 'gets instantiated' do
    JiraFormatter::Formatter.should_receive(:new)     
    run_feature('basic_functionality')
  end
  
  it 'reports the scenario name to jira' do
    
  end
end

