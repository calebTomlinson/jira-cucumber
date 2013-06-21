require 'singleton'

module JiraFormatter
  class JiraConfiguration
    include Singleton
    
    attr_accessor :project, :default_issue_type, :transitions
    
    def configure
      Jiralicious.load_yml('jiralicious.yml')
      load_yml('jiralicious.yml')
    end
    
    private

    #TODO: add dynamic attribute accessors
    #yanked straight from the jiralicious method of the same name.
    def load_yml(yml_file)
      if File.exist?(yml_file)
        yml_cfg = OpenStruct.new(YAML.load_file(yml_file))
        yml_cfg.jira_properties.each do |k, v|
          instance_variable_set("@#{k}", v)
        end
      else
        raise StandardError, "unable to find yml config file"
      end
    end
    
  end
end