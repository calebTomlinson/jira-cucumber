require "jira_formatter/version"

module JiraFormatter
  class Formatter
    def initialize(step_mother, io, options)
      @step_mother, @io, @options = step_mother, io, options  
    end
    
    def after_features(arg)
      @failures = @step_mother.scenarios(:failed).select { |s| 
        s.is_a?(Cucumber::Ast::Scenario) || s.is_a?(Cucumber::Ast::OutlineTable::ExampleRow) }
      @passes = @failures = @step_mother.scenarios(:passed).select { |s| s.is_a?(Cucumber::Ast::Scenario) || s.is_a?(Cucumber::Ast::OutlineTable::ExampleRow) }
    end     
  end
end
