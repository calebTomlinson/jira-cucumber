# JiraFormatter

This gem reports cucumber runs to a jira project. It is currenlty open source, but hasn't been generalized much for external consumption yet. It's internals and API will change rapidly for our requirements. So fork away for your own uses or help me stabilize it a bit.

## Usage

bundle exec cucumber --format JiraFormatter::Formatter --out a_file

Be sure to create a jiralicious.yml file in your Cucumber directory.

```yml
jira:
  username: username
  password: password
  uri: https://host.atlassian.net
  api_version: 2
  
jira_properties:
  project: 
    id: 123
    name: PROJECT
  default_issue_type:
    id: 28
    name: Automation Failure
  transitions:
    # current issue status id
    5:
      #transition to be applied for given status
      failed: 21
    10001:
      passed: 11
    6:
      failed: 21
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
