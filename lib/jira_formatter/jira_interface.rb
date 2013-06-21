require 'jiralicious'
require 'jira_formatter/issue'
require 'jira_formatter/jira_configuration'

module JiraFormatter
  class JiraInterface
    
    def initialize
      JiraConfiguration.instance.configure
    end
    
    def report(scenarios)
      scenarios.each do |scenario|
        issue = Issue.new(scenario)
        #issue.update
      end
    end
  end
end