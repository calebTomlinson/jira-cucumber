require 'spec_helper'
require 'jira-cucumber'

describe JiraFormatter do   
  it 'runs' do
    run_feature('everything')
  end
end

