module JiraFormatter
  class Issue
    
    def initialize(scenario)
      #search jiralicious
      @jiralicious_issue = Jiralicious::Issue.find('')
    end
    
  end
end