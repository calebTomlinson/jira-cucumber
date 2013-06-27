module JiraFormatter
  class Issue
    
    def initialize(scenario)
      @hash = scenario
      search_results = search_for_existing_issue
      if search_results.num_results == 0
        build_issue
      else
        load_issue(search_results)
      end
      update_issue
    end
    
    private
    
    def summary
      "#{@hash[:feature]} | #{@hash[:scenario]} | #{@hash[:row]}"
    end
    
    def search_for_existing_issue
      search_string = "project = #{JiraConfiguration.instance.project['id']} AND summary ~ '#{summary}'" 
      Jiralicious.search(search_string)
    end
    
    def build_issue
      @jissue = Jiralicious::Issue.new
      @jissue.fields.set_id("project", JiraConfiguration.instance.project['id'])
      @jissue.fields.set("summary", summary)
      @jissue.fields.set_id("issuetype", JiraConfiguration.instance.default_issue_type['id'])
      @jissue.save!
    end
    
    def load_issue(search_results)
      @jissue = Jiralicious::Issue.find(search_results.issues[0].jira_key)
    end
    
    def update_issue
      @jissue.fields.set('labels', @hash[:tags])
      @jissue.save
      transition_issue
      add_comments
    end
    
    def status
      @jissue.fields.fields_current['status']['id'].to_i
    end
    
    def transition_issue
      transition = JiraConfiguration.instance.transitions[status][@hash[:status].to_s]
      if transition
        Jiralicious::Issue.transition("#{@jissue.jira_self}/transitions", {"transition" => "#{transition}"})
      end
    end
    
    def add_comments
      comment = "Test #{@hash[:status]} on #{@hash[:run_time]}\nBuild: http://teamcity/viewLog.html?buildId=#{ENV['teamcity.build.id']}"
      @jissue.comments.add comment
    end
  end
end
