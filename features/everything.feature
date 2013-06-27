@feature-tag
Feature: A complicated feature
  
  @basic-scenario-tag
  @second-basic-scenario-tag
  Scenario: passing scenario
    
    Given a passing step with a parameter
    Then it passes
    
  @failing-basic
  Scenario: failing scenario
    
    Given a passing step with a parameter
    Then it fails
    
  @outline-tag
  Scenario Outline: An outline

    Given I set a resource <resource>
    Given a passing step with a <param>
    Then it <pass_or_fail>
    
    @scenarios-section-tag
    Scenarios: some scenarios
    | param     | pass_or_fail | resource |
    | parameter | passes       | value_a  |
    | parameter | fails        | value_a  |
    | missing   | irrelevant   | value_a  |

    @examples-section-tag
    Examples: some examples... because we like having two syntaxes
      | param     | pass_or_fail | resource |
      | parameter | passes       | value_b  |
      | parameter | fails        | value_b  |
      | missing   | irrelevant   | value_b  |
    