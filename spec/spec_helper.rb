require 'cucumber/cli/main'

def run_feature(feature_name)  
  Cucumber::Cli::Main.execute(["features/#{feature_name}.feature", '--format', 'JiraFormatter::Formatter'])
end