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
        begin
          issue = Issue.new(scenario)
        rescue => e
          puts "jira reporting failed for #{scenario}\n#{e.message}\n#{e.backtrace}"
        end
      end
    end
  end
end