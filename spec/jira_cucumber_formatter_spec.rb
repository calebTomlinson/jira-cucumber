require 'spec_helper'
require 'jira_formatter/jira_formatter'


  def run_feature(feature_name)
    require 'cucumber/cli/main'
    Cucumber::Cli::Main.execute(['features/basic_functionality.feature'])
  end
describe JiraFormatter do
  it 'passes' do
  end
  
  it 'collects the scenario names' do
    run_feature('basic_functionality')
  end
end

