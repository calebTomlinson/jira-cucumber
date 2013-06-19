require 'cucumber/cli/main'

def run_feature(feature_name)  
  Cucumber::Cli::Main.execute(['features/basic_functionality.feature', '--format', 'JiraFormatter::Formatter'])
end