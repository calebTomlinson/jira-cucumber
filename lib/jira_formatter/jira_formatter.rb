require "jira_formatter/version"


module JiraFormatter
  class Formatter
    def initialize(step_mother, io, options)
      @step_mother, @io, @options = step_mother, io, options
      Jiralicious.load_yml(File.expand_path("jira_secrets.yml"))
    end
    
    #def after_features(*args)
    #  issue = Jiralicious::Issue.new
    #  issue.fields.set_id("project", 'CUCAUTO')
    #  issue.fields.set("summary", "a summary")
    #  issue.fields.set("")
    #  issue.save
    #end
  end
end
