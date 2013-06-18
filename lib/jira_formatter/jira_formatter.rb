require "jira_formatter/version" 

module JiraFormatter
  class Formatter
    def initialize(step_mother, io, options)
      @step_mother, @io, @options = step_mother, io, options      
    end
    
    def before_features(*args)
      x=1
    end
  end
end
